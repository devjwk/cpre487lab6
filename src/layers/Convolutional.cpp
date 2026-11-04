#include "Convolutional.h"

#include <algorithm>
#include <iostream>
#include <vector>

#ifndef ZEDBOARD
#include <thread>
#endif

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
// --- Begin Student Code ---

// Compute the convultion for the layer data
void ConvolutionalLayer::computeNaive(const LayerData& dataIn) const {
    // Dimensions, named as in the textbook: input (H, W, C), weights (R, S, C, M), output (P, Q, M)
    const dimVec& inDims = getInputParams().dims;
    const dimVec& outDims = getOutputParams().dims;
    const dimVec& weightDims = getWeightParams().dims;

    const size W = inDims[1], C = inDims[2];
    const size P = outDims[0], Q = outDims[1], M = outDims[2];
    const size R = weightDims[0], S = weightDims[1];

    LayerData& dataOut = getOutputData();

    // Stride 1, no padding: output (p, q) covers input rows p..p+R-1 and columns q..q+S-1
    for (size p = 0; p < P; p++) {
        for (size q = 0; q < Q; q++) {
            for (size m = 0; m < M; m++) {
                fp32 sum = biasData.get<fp32>(m);

                for (size r = 0; r < R; r++) {
                    for (size s = 0; s < S; s++) {
                        for (size c = 0; c < C; c++) {
                            sum += dataIn.get<fp32>(((p + r) * W + (q + s)) * C + c) *
                                   weightData.get<fp32>(((r * S + s) * C + c) * M + m);
                        }
                    }
                }

                // ReLU activation is part of the layer, as in the Keras Conv2D layers of the model
                dataOut.get<fp32>((p * Q + q) * M + m) = sum > 0 ? sum : 0;
            }
        }
    }
}

// Loop order p, q, r, s, c, m for output pixels [pixBegin, pixEnd)
static void convPixels(const fp32* __restrict__ in, const fp32* __restrict__ weights, const fp32* __restrict__ bias,
                       fp32* __restrict__ out, const size W, const size C, const size Q, const size M, const size R,
                       const size S, const size pixBegin, const size pixEnd) {
    for (size pix = pixBegin; pix < pixEnd; pix++) {
        const size p = pix / Q, q = pix % Q;
        fp32* o = out + pix * M;

        for (size m = 0; m < M; m++) o[m] = bias[m];

        for (size r = 0; r < R; r++) {
            for (size s = 0; s < S; s++) {
                const fp32* x = in + ((p + r) * W + (q + s)) * C;
                const fp32* w = weights + (r * S + s) * C * M;

                for (size c = 0; c < C; c++) {
                    const fp32 xv = x[c];
                    const fp32* wRow = w + c * M;
                    for (size m = 0; m < M; m++) o[m] += xv * wRow[m];
                }
            }
        }

        for (size m = 0; m < M; m++) o[m] = o[m] > 0 ? o[m] : 0;
    }
}

void ConvolutionalLayer::computeReordered(const LayerData& dataIn) const {
    const dimVec& inDims = getInputParams().dims;
    const dimVec& outDims = getOutputParams().dims;
    const dimVec& weightDims = getWeightParams().dims;

    convPixels((const fp32*)dataIn.raw(), (const fp32*)weightData.raw(), (const fp32*)biasData.raw(),
               (fp32*)getOutputData().raw(), inDims[1], inDims[2], outDims[1], outDims[2], weightDims[0], weightDims[1], 0,
               outDims[0] * outDims[1]);
}

// Compute the convolution using threads
void ConvolutionalLayer::computeThreaded(const LayerData& dataIn) const {
#ifdef ZEDBOARD
    computeReordered(dataIn);
#else
    const dimVec& inDims = getInputParams().dims;
    const dimVec& outDims = getOutputParams().dims;
    const dimVec& weightDims = getWeightParams().dims;

    const fp32* in = (const fp32*)dataIn.raw();
    const fp32* weights = (const fp32*)weightData.raw();
    const fp32* bias = (const fp32*)biasData.raw();
    fp32* out = (fp32*)getOutputData().raw();

    const size pixels = outDims[0] * outDims[1];
    const size threads = std::max<size>(1, std::min(Config::NUM_THREADS, pixels));

    std::vector<std::thread> pool;
    for (size t = 0; t < threads; t++) {
        const size begin = pixels * t / threads, end = pixels * (t + 1) / threads;
        pool.emplace_back(convPixels, in, weights, bias, out, inDims[1], inDims[2], outDims[1], outDims[2], weightDims[0],
                          weightDims[1], begin, end);
    }
    for (auto& thread : pool) thread.join();
#endif
}

// Compute the convolution using a tiled approach (blocks of TILE_SIZE output and input channels)
void ConvolutionalLayer::computeTiled(const LayerData& dataIn) const {
    const dimVec& inDims = getInputParams().dims;
    const dimVec& outDims = getOutputParams().dims;
    const dimVec& weightDims = getWeightParams().dims;

    const size W = inDims[1], C = inDims[2];
    const size P = outDims[0], Q = outDims[1], M = outDims[2];
    const size R = weightDims[0], S = weightDims[1];
    const size B = std::max<size>(1, Config::TILE_SIZE);

    const fp32* __restrict__ in = (const fp32*)dataIn.raw();
    const fp32* __restrict__ weights = (const fp32*)weightData.raw();
    const fp32* __restrict__ bias = (const fp32*)biasData.raw();
    fp32* __restrict__ out = (fp32*)getOutputData().raw();

    for (size pix = 0; pix < P * Q; pix++) {
        for (size m = 0; m < M; m++) out[pix * M + m] = bias[m];
    }

    for (size m0 = 0; m0 < M; m0 += B) {
        const size mEnd = std::min(m0 + B, M);
        for (size c0 = 0; c0 < C; c0 += B) {
            const size cEnd = std::min(c0 + B, C);

            for (size p = 0; p < P; p++) {
                for (size q = 0; q < Q; q++) {
                    fp32* o = out + (p * Q + q) * M;

                    for (size r = 0; r < R; r++) {
                        for (size s = 0; s < S; s++) {
                            const fp32* x = in + ((p + r) * W + (q + s)) * C;
                            const fp32* w = weights + (r * S + s) * C * M;

                            for (size c = c0; c < cEnd; c++) {
                                const fp32 xv = x[c];
                                const fp32* wRow = w + c * M;
                                for (size m = m0; m < mEnd; m++) o[m] += xv * wRow[m];
                            }
                        }
                    }
                }
            }
        }
    }

    for (size i = 0; i < P * Q * M; i++) out[i] = out[i] > 0 ? out[i] : 0;
}

// Compute the convolution using SIMD (vectorized by the compiler flags)
void ConvolutionalLayer::computeSIMD(const LayerData& dataIn) const { computeReordered(dataIn); }
}  // namespace ML
