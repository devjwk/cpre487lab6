#!/usr/bin/env bash
# Lab 6 measurements on the lab computer (x86, g++). Run from the repository root:
#   ./scripts/run_lab6_x86.sh [iterations=100]
# Writes results/x86/*.txt; scripts/plot_lab6.py turns them into the report charts.
set -euo pipefail
N=${1:-100}
OUT=results/x86
mkdir -p "$OUT"

# Cache sizes and core count of this machine (3.2 asks to reason about the hardware)
{ hostname; lscpu; echo; grep . /sys/devices/system/cpu/cpu0/cache/index*/{level,type,size}; } > "$OUT/cpu.txt"

# One build per SIMD setting; ASM=true keeps the assembly next to each object (build_<simd>/layers/Convolutional.s)
SIMDS="none sse2 avx native"
grep -q avx512f /proc/cpuinfo && SIMDS="$SIMDS avx512"
for s in $SIMDS; do
    make -s -j BDIR=build_$s SIMD=$s ASM=true > /dev/null
done

keep() { grep -E '^(BENCH|LAYERS_MS|THROUGHPUT|CHECK)' | tee -a "$1"; }

# Every variant must match the naive loops before anything is timed
./build_sse2/ml check | keep "$OUT/check.txt"

# 3.1.2 before / after reordering, and 3.1.3 block sizes (default -O3 flags)
: > "$OUT/tiling.txt"
./build_sse2/ml bench naive "$N" | keep "$OUT/tiling.txt"
./build_sse2/ml bench reordered "$N" | keep "$OUT/tiling.txt"
for b in 2 4 8 16 32; do ./build_sse2/ml bench tiled "$N" "$b" | keep "$OUT/tiling.txt"; done

# 3.2 threads, without and with -march=native
: > "$OUT/threads.txt"
for t in 1 2 4 8 12 16 20 24 32 64; do
    ./build_sse2/ml bench threaded "$N" 16 "$t" | sed 's/^BENCH /BENCH simd=sse2 /' | keep "$OUT/threads.txt"
    ./build_native/ml bench threaded "$N" 16 "$t" | sed 's/^BENCH /BENCH simd=native /' | keep "$OUT/threads.txt"
done

# 3.3 SIMD flags, naive and reordered loops
: > "$OUT/simd.txt"
for s in $SIMDS; do
    for m in naive reordered; do
        ./build_$s/ml bench "$m" "$N" | sed "s/^BENCH /BENCH simd=$s /" | keep "$OUT/simd.txt"
    done
done

# 3.4 throughput: one model per worker thread, one image per worker at a time
: > "$OUT/throughput.txt"
for w in 1 2 4 8 12 16 20 24 32; do
    ./build_native/ml throughput reordered 1000 "$w" | keep "$OUT/throughput.txt"
done

echo "Done. Results in $OUT/"
