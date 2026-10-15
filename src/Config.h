#pragma once

#include <cstddef>

// Disable all timers
// #define DISABLE_TIMING

namespace ML {
namespace Config {
constexpr bool ENABLE_SIMD = false;
constexpr bool FANCY_LOGGING = true;

// Floating Point Compare Epsilon
constexpr float EPSILON = 0.001;

// Lab 6 tuning knobs, set from the command line on x86 and by the sweep on the ZedBoard
extern std::size_t TILE_SIZE;    // block size of the tiled convolution (computeTiled)
extern std::size_t NUM_THREADS;  // threads per convolution (computeThreaded)
} // namespace Config
} // namespace ML::Config