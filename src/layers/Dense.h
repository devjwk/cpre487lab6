#pragma once

#include "../Types.h"
#include "../Utils.h"
#include "Layer.h"

namespace ML {
// Fully connected layer: every output is a weighted sum of all inputs plus a bias
class DenseLayer : public Layer {
   public:
    // applyRelu is false for the last dense layer, whose output goes to the softmax layer instead
    DenseLayer(const LayerParams inParams, const LayerParams outParams, const LayerParams weightParams, const LayerParams biasParams,
               const bool applyRelu = true)
        : Layer(inParams, outParams, LayerType::DENSE),
          weightParam(weightParams),
          weightData(weightParams),
          biasParam(biasParams),
          biasData(biasParams),
          applyRelu(applyRelu) {}

    // Getters
    const LayerParams& getWeightParams() const { return weightParam; }
    const LayerParams& getBiasParams() const { return biasParam; }
    const LayerData& getWeightData() const { return weightData; }
    const LayerData& getBiasData() const { return biasData; }

    // Allocate all resources needed for the layer & Load all of the required data for the layer
    virtual void allocLayer() override {
        Layer::allocLayer();
        weightData.loadData();
        biasData.loadData();
    }

    // Free all resources allocated for the layer
    virtual void freeLayer() override {
        Layer::freeLayer();
        weightData.freeData();
        biasData.freeData();
    }

    virtual void computeNaive(const LayerData& dataIn) const override {
        // Input (N), weights (N, M), output (M)
        const size N = getInputParams().dims[0];
        const size M = getOutputParams().dims[0];

        LayerData& dataOut = getOutputData();

        for (size m = 0; m < M; m++) {
            fp32 sum = biasData.get<fp32>(m);

            for (size n = 0; n < N; n++) {
                sum += dataIn.get<fp32>(n) * weightData.get<fp32>(n * M + m);
            }

            dataOut.get<fp32>(m) = (applyRelu && sum < 0) ? 0 : sum;
        }
    }

    // Lab 6: n outer, m inner, so the weights (N, M) are read in storage order instead of with a stride of M
    virtual void computeReordered(const LayerData& dataIn) const override {
        const size N = getInputParams().dims[0];
        const size M = getOutputParams().dims[0];

        const fp32* in = (const fp32*)dataIn.raw();
        const fp32* weights = (const fp32*)weightData.raw();
        fp32* out = (fp32*)getOutputData().raw();

        for (size m = 0; m < M; m++) out[m] = biasData.get<fp32>(m);
        for (size n = 0; n < N; n++) {
            const fp32 xv = in[n];
            const fp32* wRow = weights + n * M;
            for (size m = 0; m < M; m++) out[m] += xv * wRow[m];
        }
        if (applyRelu) {
            for (size m = 0; m < M; m++) out[m] = out[m] > 0 ? out[m] : 0;
        }
    }

    // The dense layers are under 1% of the MACs, so the other variants use the reordered loops
    virtual void computeThreaded(const LayerData& dataIn) const override { computeReordered(dataIn); }
    virtual void computeTiled(const LayerData& dataIn) const override { computeReordered(dataIn); }
    virtual void computeSIMD(const LayerData& dataIn) const override { computeReordered(dataIn); }

   private:
    LayerParams weightParam;
    LayerData weightData;

    LayerParams biasParam;
    LayerData biasData;

    bool applyRelu;
};

}  // namespace ML
