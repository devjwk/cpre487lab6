#include <cstdlib>
#include <cstring>
#include <iomanip>
#include <iostream>
#include <sstream>
#include <vector>

#ifndef ZEDBOARD
#include <thread>
#endif

#include "Config.h"
#include "Model.h"
#include "Types.h"
#include "Utils.h"
#include "layers/Convolutional.h"
#include "layers/Dense.h"
#include "layers/Flatten.h"
#include "layers/Layer.h"
#include "layers/MaxPooling.h"
#include "layers/Softmax.h"

#ifdef ZEDBOARD
#include <file_transfer/file_transfer.h>
#endif

namespace ML {

// Test images in the data folder: image_0.bin ... image_2.bin
const std::size_t NUM_TEST_IMAGES = 3;

// The TensorFlow model has 12 layers and its last layer (dense_1) includes the softmax activation. Here that layer is
// split into Dense 2 and Softmax, so layers 0-10 match reference outputs 0-10 one to one, and layers 11 + 12 together
// match reference output 11.
const std::size_t DENSE2_LAYER = 11;
const std::size_t FINAL_REFERENCE = 11;

// Build our ML toy model
Model buildToyModel(const Path modelPath) {
    Model model;
    logInfo("--- Building Toy Model ---");

    // --- Conv 1: L1 ---
    // Input shape: 64x64x3
    // Output shape: 60x60x32

    // You can pick how you want to implement your layers, both are allowed:

    // LayerParams conv1_inDataParam(sizeof(fp32), {64, 64, 3});
    // LayerParams conv1_outDataParam(sizeof(fp32), {60, 60, 32});
    // LayerParams conv1_weightParam(sizeof(fp32), {5, 5, 3, 32}, modelPath / "conv1_weights.bin");
    // LayerParams conv1_biasParam(sizeof(fp32), {32}, modelPath / "conv1_biases.bin");
    // auto conv1 = new ConvolutionalLayer(conv1_inDataParam, conv1_outDataParam, conv1_weightParam, conv1_biasParam);

    model.addLayer<ConvolutionalLayer>(
        LayerParams{sizeof(fp32), {64, 64, 3}},                                    // Input Data
        LayerParams{sizeof(fp32), {60, 60, 32}},                                   // Output Data
        LayerParams{sizeof(fp32), {5, 5, 3, 32}, modelPath / "conv1_weights.bin"}, // Weights
        LayerParams{sizeof(fp32), {32}, modelPath / "conv1_biases.bin"}            // Bias
    );

    // --- Conv 2: L2 ---
    // Input shape: 60x60x32
    // Output shape: 56x56x32
    model.addLayer<ConvolutionalLayer>(
        LayerParams{sizeof(fp32), {60, 60, 32}},                                    // Input Data
        LayerParams{sizeof(fp32), {56, 56, 32}},                                    // Output Data
        LayerParams{sizeof(fp32), {5, 5, 32, 32}, modelPath / "conv2_weights.bin"}, // Weights
        LayerParams{sizeof(fp32), {32}, modelPath / "conv2_biases.bin"}             // Bias
    );

    // --- MPL 1: L3 ---
    // Input shape: 56x56x32
    // Output shape: 28x28x32
    model.addLayer<MaxPoolingLayer>(
        LayerParams{sizeof(fp32), {56, 56, 32}},
        LayerParams{sizeof(fp32), {28, 28, 32}}
    );

    // --- Conv 3: L4 ---
    // Input shape: 28x28x32
    // Output shape: 26x26x64
    model.addLayer<ConvolutionalLayer>(
        LayerParams{sizeof(fp32), {28, 28, 32}},
        LayerParams{sizeof(fp32), {26, 26, 64}},
        LayerParams{sizeof(fp32), {3, 3, 32, 64}, modelPath / "conv3_weights.bin"},
        LayerParams{sizeof(fp32), {64}, modelPath / "conv3_biases.bin"}
    );

    // --- Conv 4: L5 ---
    // Input shape: 26x26x64
    // Output shape: 24x24x64
    model.addLayer<ConvolutionalLayer>(
        LayerParams{sizeof(fp32), {26, 26, 64}},
        LayerParams{sizeof(fp32), {24, 24, 64}},
        LayerParams{sizeof(fp32), {3, 3, 64, 64}, modelPath / "conv4_weights.bin"},
        LayerParams{sizeof(fp32), {64}, modelPath / "conv4_biases.bin"}
    );

    // --- MPL 2: L6 ---
    // Input shape: 24x24x64
    // Output shape: 12x12x64
    model.addLayer<MaxPoolingLayer>(
        LayerParams{sizeof(fp32), {24, 24, 64}},
        LayerParams{sizeof(fp32), {12, 12, 64}}
    );

    // --- Conv 5: L7 ---
    // Input shape: 12x12x64
    // Output shape: 10x10x64
    model.addLayer<ConvolutionalLayer>(
        LayerParams{sizeof(fp32), {12, 12, 64}},
        LayerParams{sizeof(fp32), {10, 10, 64}},
        LayerParams{sizeof(fp32), {3, 3, 64, 64}, modelPath / "conv5_weights.bin"},
        LayerParams{sizeof(fp32), {64}, modelPath / "conv5_biases.bin"}
    );

    // --- Conv 6: L8 ---
    // Input shape: 10x10x64
    // Output shape: 8x8x128
    model.addLayer<ConvolutionalLayer>(
        LayerParams{sizeof(fp32), {10, 10, 64}},
        LayerParams{sizeof(fp32), {8, 8, 128}},
        LayerParams{sizeof(fp32), {3, 3, 64, 128}, modelPath / "conv6_weights.bin"},
        LayerParams{sizeof(fp32), {128}, modelPath / "conv6_biases.bin"}
    );

    // --- MPL 3: L9 ---
    // Input shape: 8x8x128
    // Output shape: 4x4x128
    model.addLayer<MaxPoolingLayer>(
        LayerParams{sizeof(fp32), {8, 8, 128}},
        LayerParams{sizeof(fp32), {4, 4, 128}}
    );

    // --- Flatten 1: L10 ---
    // Input shape: 4x4x128
    // Output shape: 2048
    model.addLayer<FlattenLayer>(
        LayerParams{sizeof(fp32), {4, 4, 128}},
        LayerParams{sizeof(fp32), {2048}}
    );

    // --- Dense 1: L11 ---
    // Input shape: 2048
    // Output shape: 256
    model.addLayer<DenseLayer>(
        LayerParams{sizeof(fp32), {2048}},
        LayerParams{sizeof(fp32), {256}},
        LayerParams{sizeof(fp32), {2048, 256}, modelPath / "dense1_weights.bin"},
        LayerParams{sizeof(fp32), {256}, modelPath / "dense1_biases.bin"}
    );

    // --- Dense 2: L12 ---
    // Input shape: 256
    // Output shape: 200
    // No ReLU here: the output of this layer goes to the softmax layer
    model.addLayer<DenseLayer>(
        LayerParams{sizeof(fp32), {256}},
        LayerParams{sizeof(fp32), {200}},
        LayerParams{sizeof(fp32), {256, 200}, modelPath / "dense2_weights.bin"},
        LayerParams{sizeof(fp32), {200}, modelPath / "dense2_biases.bin"},
        false
    );

    // --- Softmax 1: L13 ---
    // Input shape: 200
    // Output shape: 200
    model.addLayer<SoftmaxLayer>(
        LayerParams{sizeof(fp32), {200}},
        LayerParams{sizeof(fp32), {200}}
    );

    return model;
}

void runBasicTest(const Model& model, const Path& basePath) {
    logInfo("--- Running Basic Test ---");

    // Load an image
    LayerData img = {{sizeof(fp32), {64, 64, 3}, "./data/image_0.bin"}};
    img.loadData();

    // Compare images
    std::cout << "Comparing image 0 to itself (max error): " << img.compare<fp32>(img) << std::endl
              << "Comparing image 0 to itself (T/F within epsilon " << ML::Config::EPSILON << "): " << std::boolalpha
              << img.compareWithin<fp32>(img, ML::Config::EPSILON) << std::endl;

    // Test again with a modified copy
    std::cout << "\nChange a value by 0.1 and compare again" << std::endl;
    
    LayerData imgCopy = img;
    imgCopy.get<fp32>(0) += 0.1;

    // Compare images
    img.compareWithinPrint<fp32>(imgCopy);

    // Test again with a modified copy
    log("Change a value by 0.1 and compare again...");
    imgCopy.get<fp32>(0) += 0.1;

    // Compare Images
    img.compareWithinPrint<fp32>(imgCopy);
}

// Path of the TensorFlow reference output of a layer for one of the test images
Path referenceOutputPath(const Path& basePath, const std::size_t imageNum, const std::size_t layerNum) {
    return basePath / ("image_" + std::to_string(imageNum) + "_data") / ("layer_" + std::to_string(layerNum) + "_output.bin");
}

// Test one layer by itself: its input is the TensorFlow output of the previous layer (or the image for layer 0),
// so an error in an earlier layer cannot affect the result
void runLayerTest(const std::size_t layerNum, const Model& model, const Path& basePath) {
    for (std::size_t imageNum = 0; imageNum < NUM_TEST_IMAGES; imageNum++) {
        logInfo(std::string("--- Running Layer Test ") + std::to_string(layerNum) + ", image " + std::to_string(imageNum) + " ---");

        const Path inputPath = (layerNum == 0) ? basePath / ("image_" + std::to_string(imageNum) + ".bin")
                                               : referenceOutputPath(basePath, imageNum, layerNum - 1);
        LayerData input(model[layerNum].getInputParams(), inputPath);
        input.loadData();

        Timer timer("Layer Inference");

        // Run inference on the layer
        timer.start();
        const LayerData& output = model.inferenceLayer(input, layerNum, Layer::InfType::NAIVE);
        timer.stop();

        // Compare the output
        LayerData expected(output.getParams(), referenceOutputPath(basePath, imageNum, layerNum));
        expected.loadData();
        output.compareWithinPrint<fp32>(expected);
    }
}

// Test Dense 2 and Softmax together, because TensorFlow has no separate output for Dense 2:
// the input is the reference output of Dense 1, and the result is compared with the final reference output
void runOutputStageTest(const Model& model, const Path& basePath) {
    for (std::size_t imageNum = 0; imageNum < NUM_TEST_IMAGES; imageNum++) {
        logInfo(std::string("--- Running Layer Test ") + std::to_string(DENSE2_LAYER) + " + " + std::to_string(DENSE2_LAYER + 1) +
                ", image " + std::to_string(imageNum) + " ---");

        LayerData input(model[DENSE2_LAYER].getInputParams(), referenceOutputPath(basePath, imageNum, DENSE2_LAYER - 1));
        input.loadData();

        Timer timer("Layer Inference");

        timer.start();
        const LayerData& logits = model.inferenceLayer(input, DENSE2_LAYER, Layer::InfType::NAIVE);
        const LayerData& output = model.inferenceLayer(logits, DENSE2_LAYER + 1, Layer::InfType::NAIVE);
        timer.stop();

        LayerData expected(output.getParams(), referenceOutputPath(basePath, imageNum, FINAL_REFERENCE));
        expected.loadData();
        output.compareWithinPrint<fp32>(expected);
    }
}

void runInferenceTest(const Model& model, const Path& basePath) {
    for (std::size_t imageNum = 0; imageNum < NUM_TEST_IMAGES; imageNum++) {
        logInfo(std::string("--- Running Inference Test, image ") + std::to_string(imageNum) + " ---");

        LayerData img(model[0].getInputParams(), basePath / ("image_" + std::to_string(imageNum) + ".bin"));
        img.loadData();

        Timer timer("Full Inference");

        // Run inference on the model
        timer.start();
        const LayerData& output = model.inference(img, Layer::InfType::NAIVE);
        timer.stop();

        // Compare the output with the final TensorFlow output
        LayerData expected(model.getOutputLayer().getOutputParams(), referenceOutputPath(basePath, imageNum, FINAL_REFERENCE));
        expected.loadData();
        output.compareWithinPrint<fp32>(expected);

        // Report the predicted class (index of the largest output) and its confidence
        std::size_t best = 0;
        for (std::size_t i = 1; i < output.getParams().flat_count(); i++) {
            if (output.get<fp32>(i) > output.get<fp32>(best)) best = i;
        }
        std::cout << "Predicted class: " << best << " (confidence " << output.get<fp32>(best) << ")" << std::endl;
    }
}

void runTests() {
    // Base input data path (determined from current directory of where you are running the command)
    Path basePath("data");  // May need to be altered for zedboards loading from SD Cards

    // Build the model and allocate the buffers
    Model model = buildToyModel(basePath / "model");
    model.allocLayers();

    // Run some framework tests as an example of loading data
    runBasicTest(model, basePath);

    // Run a layer inference test for every layer that has its own reference output, then Dense 2 + Softmax together
    for (std::size_t layerNum = 0; layerNum < DENSE2_LAYER; layerNum++) {
        runLayerTest(layerNum, model, basePath);
    }
    runOutputStageTest(model, basePath);

    // Run an end-to-end inference test
    runInferenceTest(model, basePath);

    // Clean up
    model.freeLayers();
    std::cout << "\n\n----- ML::runTests() COMPLETE -----\n";
}

// ----- Lab 6 benchmark -----

double nowMs() {
#ifdef ZEDBOARD
    XTime t;
    XTime_GetTime(&t);
    return (double)t * 1000.0 / COUNTS_PER_SECOND;
#else
    return std::chrono::duration<double, std::milli>(std::chrono::steady_clock::now().time_since_epoch()).count();
#endif
}

const char* infTypeName(const Layer::InfType infType) {
    switch (infType) {
    case Layer::InfType::NAIVE: return "naive";
    case Layer::InfType::REORDERED: return "reordered";
    case Layer::InfType::THREADED: return "threaded";
    case Layer::InfType::TILED: return "tiled";
    case Layer::InfType::SIMD: return "simd";
    }
    return "?";
}

void loadTestSet(const Model& model, const Path& basePath, std::vector<LayerData>& images, std::vector<LayerData>& expected) {
    for (std::size_t i = 0; i < NUM_TEST_IMAGES; i++) {
        images.emplace_back(model[0].getInputParams(), basePath / ("image_" + std::to_string(i) + ".bin"));
        images.back().loadData();
        expected.emplace_back(model.getOutputLayer().getOutputParams(), referenceOutputPath(basePath, i, FINAL_REFERENCE));
        expected.back().loadData();
    }
}

#ifndef ZEDBOARD
// No TensorFlow outputs for these images: the reference is the reordered loops (bit-identical to naive)
void loadValSet(const Model& model, const Path& basePath, const std::size_t n, std::vector<LayerData>& images,
                std::vector<LayerData>& expected) {
    std::ifstream imageFile(basePath / "val" / "val_images_u8.bin", std::ios::binary);
    std::ifstream labelFile(basePath / "val" / "val_labels_i32.bin", std::ios::binary);
    if (!imageFile.is_open() || !labelFile.is_open()) throw std::runtime_error("Missing data/val/val_*.bin");

    const std::size_t imageSize = model[0].getInputParams().flat_count();
    const std::size_t classes = model.getOutputLayer().getOutputParams().flat_count();
    std::vector<ui8> pixels(imageSize);
    std::size_t top1 = 0;
    for (std::size_t i = 0; i < n; i++) {
        i32 label;
        if (!imageFile.read((char*)pixels.data(), imageSize) || !labelFile.read((char*)&label, sizeof(label))) break;
        images.emplace_back(model[0].getInputParams());
        images.back().allocData();
        for (std::size_t k = 0; k < imageSize; k++) images.back().get<fp32>(k) = pixels[k] / 255.0f;

        expected.push_back(model.inference(images.back(), Layer::InfType::REORDERED));
        std::size_t best = 0;
        for (std::size_t k = 1; k < classes; k++) {
            if (expected.back().get<fp32>(k) > expected.back().get<fp32>(best)) best = k;
        }
        if ((i32)best == label) top1++;
    }
    std::cout << "VAL images=" << images.size() << " top1=" << top1 << std::endl;
}
#endif

void loadImages(const Model& model, const Path& basePath, const bool val, const std::size_t n, std::vector<LayerData>& images,
                std::vector<LayerData>& expected) {
#ifndef ZEDBOARD
    if (val) {
        loadValSet(model, basePath, n, images, expected);
        if (images.empty()) throw std::runtime_error("No images loaded");
        return;
    }
#endif
    loadTestSet(model, basePath, images, expected);
    if (images.empty()) throw std::runtime_error("No images loaded");
}

void runBenchmark(const Model& model, const Path& basePath, const Layer::InfType infType, const std::size_t iters,
                  const bool val = false) {
    std::vector<LayerData> images, expected;
    loadImages(model, basePath, val, iters, images, expected);

    const std::size_t numLayers = model.getNumLayers();
    std::vector<double> layerMs(numLayers, 0.0);
    double totalMs = 0.0, minMs = 1e30;
    std::size_t passed = 0;

    for (std::size_t it = 0; it < iters; it++) {
        const std::size_t imageNum = it % images.size();
        const double start = nowMs();
        const LayerData* data = &images[imageNum];
        for (std::size_t l = 0; l < numLayers; l++) {
            const double layerStart = nowMs();
            data = &model.inferenceLayer(*data, l, infType);
            layerMs[l] += nowMs() - layerStart;
        }
        const double ms = nowMs() - start;
        totalMs += ms;
        minMs = std::min(minMs, ms);
        if (data->maxDiff<fp32>(expected[imageNum]) < Config::EPSILON) passed++;
    }

    std::cout << std::fixed << std::setprecision(3) << "BENCH mode=" << infTypeName(infType) << " block=" << Config::TILE_SIZE
              << " threads=" << Config::NUM_THREADS << " iters=" << iters << " images=" << images.size()
              << " mean_ms=" << totalMs / iters << " min_ms=" << minMs << " conv2_ms=" << layerMs[1] / iters << " pass=" << passed
              << "/" << iters << std::endl;
    std::cout << "LAYERS_MS";
    for (std::size_t l = 0; l < numLayers; l++) std::cout << " " << layerMs[l] / iters;
    std::cout << std::endl;
}

bool runVariantCheck(const Model& model, const Path& basePath) {
    LayerData img(model[0].getInputParams(), basePath / "image_0.bin");
    img.loadData();

    std::vector<LayerData> reference;
    const LayerData* data = &img;
    for (std::size_t l = 0; l < model.getNumLayers(); l++) {
        data = &model.inferenceLayer(*data, l, Layer::InfType::NAIVE);
        reference.push_back(*data);
    }

    bool ok = true;
    for (auto infType : {Layer::InfType::REORDERED, Layer::InfType::THREADED, Layer::InfType::TILED}) {
        float worst = 0;
        data = &img;
        for (std::size_t l = 0; l < model.getNumLayers(); l++) {
            data = &model.inferenceLayer(*data, l, infType);
            worst = std::max(worst, data->maxDiff<fp32>(reference[l]));
        }
        ok = ok && worst < Config::EPSILON;
        std::cout << "CHECK " << infTypeName(infType) << " layer_max_diff=" << worst << (worst < Config::EPSILON ? " OK" : " FAIL")
                  << std::endl;
    }
    return ok;
}

#ifndef ZEDBOARD
// One model per worker, since the layers own their output buffers
void runThroughput(const Path& basePath, const Layer::InfType infType, const std::size_t iters, const std::size_t workers,
                   const bool val) {
    std::vector<Model> models;
    for (std::size_t w = 0; w < workers; w++) {
        models.push_back(buildToyModel(basePath / "model"));
        models.back().allocLayers();
    }
    std::vector<LayerData> images, expected;
    loadImages(models[0], basePath, val, iters, images, expected);

    std::vector<std::size_t> passed(workers, 0);
    std::vector<std::thread> pool;
    const double start = nowMs();
    for (std::size_t w = 0; w < workers; w++) {
        pool.emplace_back([&, w]() {
            for (std::size_t it = w; it < iters; it += workers) {
                const std::size_t imageNum = it % images.size();
                const LayerData& out = models[w].inference(images[imageNum], infType);
                if (out.maxDiff<fp32>(expected[imageNum]) < Config::EPSILON) passed[w]++;
            }
        });
    }
    for (auto& thread : pool) thread.join();
    const double ms = nowMs() - start;

    std::size_t totalPassed = 0;
    for (auto p : passed) totalPassed += p;
    std::cout << std::fixed << std::setprecision(3) << "THROUGHPUT mode=" << infTypeName(infType) << " workers=" << workers
              << " conv_threads=" << Config::NUM_THREADS << " iters=" << iters << " images=" << images.size()
              << " total_ms=" << ms << " img_per_s=" << iters * 1000.0 / ms << " pass=" << totalPassed << "/" << iters << std::endl;
}
#endif

#ifndef ZED_ITERS
#define ZED_ITERS 100
#endif

void runZedboardSweep() {
    Path basePath("data");
    Model model = buildToyModel(basePath / "model");
    model.allocLayers();

    runVariantCheck(model, basePath);
    runBenchmark(model, basePath, Layer::InfType::NAIVE, ZED_ITERS);
    runBenchmark(model, basePath, Layer::InfType::REORDERED, ZED_ITERS);
    for (std::size_t block : {2, 4, 8, 16, 32}) {
        Config::TILE_SIZE = block;
        runBenchmark(model, basePath, Layer::InfType::TILED, ZED_ITERS);
    }
    std::cout << "\n\n----- ML::runZedboardSweep() COMPLETE -----\n";
}

} // namespace ML

#ifdef ZEDBOARD
extern "C"
int main() {
    try {
        static FATFS fatfs;
        if (f_mount(&fatfs, "/", 1) != FR_OK) {
            throw std::runtime_error("Failed to mount SD card. Is it plugged in?");
        }
        ML::runZedboardSweep();
    } catch (const std::exception& e) {
        std::cerr << "\n\n----- EXCEPTION THROWN -----\n" << e.what() << '\n';
    }
    std::cout << "\n\n----- STARTING FILE TRANSFER SERVER -----\n";
    FileServer::start_file_transfer_server();
}
#else
// ml                     Lab 2 layer tests
// ml check
// ml bench <naive|reordered|tiled|threaded|simd> [iters=100] [block=16] [threads=8] [val]
// ml throughput <mode> [iters=300] [workers=8] [conv_threads=1] [val]
int main(int argc, char** argv) {
    if (argc == 2 && std::strcmp(argv[1], "check") == 0) {
        ML::Model model = ML::buildToyModel(ML::Path("data") / "model");
        model.allocLayers();
        for (std::size_t threads : {3, 64}) {
            ML::Config::NUM_THREADS = threads;
            for (std::size_t block : {2, 5, 32}) {
                ML::Config::TILE_SIZE = block;
                if (!ML::runVariantCheck(model, "data")) return 1;
            }
        }
        return 0;
    }
    if (argc < 3) {
        ML::runTests();
        return 0;
    }

    using ML::Layer;
    const std::string mode = argv[2];
    Layer::InfType infType;
    if (mode == "naive") infType = Layer::InfType::NAIVE;
    else if (mode == "reordered") infType = Layer::InfType::REORDERED;
    else if (mode == "tiled") infType = Layer::InfType::TILED;
    else if (mode == "threaded") infType = Layer::InfType::THREADED;
    else if (mode == "simd") infType = Layer::InfType::SIMD;
    else {
        std::cerr << "Unknown mode " << mode << std::endl;
        return 1;
    }
    const bool val = std::strcmp(argv[argc - 1], "val") == 0;
    if (val) argc--;
    auto arg = [&](int i, std::size_t fallback) { return argc > i ? (std::size_t)std::strtoul(argv[i], nullptr, 10) : fallback; };

    ML::Path basePath("data");
    if (std::strcmp(argv[1], "bench") == 0) {
        ML::Config::TILE_SIZE = arg(4, 16);
        ML::Config::NUM_THREADS = arg(5, 8);
        ML::Model model = ML::buildToyModel(basePath / "model");
        model.allocLayers();
        ML::runBenchmark(model, basePath, infType, arg(3, 100), val);
    } else if (std::strcmp(argv[1], "throughput") == 0) {
        ML::Config::NUM_THREADS = arg(5, 1);
        ML::runThroughput(basePath, infType, arg(3, 300), arg(4, 8), val);
    } else {
        std::cerr << "Unknown command " << argv[1] << std::endl;
        return 1;
    }
}
#endif