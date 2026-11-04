#!/usr/bin/env bash
# ./scripts/run_lab6_x86.sh [iterations=100]   all x86 measurements -> results/x86/
# ./scripts/run_lab6_x86.sh best               only 3.4, on the validation images -> results/x86/best_val.txt
set -euo pipefail
OUT=results/x86
mkdir -p "$OUT"

SIMDS="none sse2 avx native"
grep -q avx512f /proc/cpuinfo && SIMDS="$SIMDS avx512"
for s in $SIMDS; do
    make -s -j BDIR=build_$s SIMD=$s ASM=true > /dev/null
done

keep() { grep -E '^(VAL|BENCH|LAYERS_MS|THROUGHPUT|CHECK)' | tee -a "$1"; }

best() {
    : > "$OUT/best_val.txt"
    hostname | tee -a "$OUT/best_val.txt"
    for t in 12 16 20; do
        ./build_native/ml bench threaded 1000 16 "$t" val | keep "$OUT/best_val.txt"
    done
    for w in 16 20 24 32; do
        ./build_native/ml throughput reordered 1000 "$w" 1 val | keep "$OUT/best_val.txt"
    done
}

if [ "${1:-}" = best ]; then
    best
    exit 0
fi
N=${1:-100}

{ hostname; lscpu; echo; grep . /sys/devices/system/cpu/cpu0/cache/index*/{level,type,size}; } > "$OUT/cpu.txt"

./build_sse2/ml check | keep "$OUT/check.txt"

: > "$OUT/tiling.txt"
./build_sse2/ml bench naive "$N" | keep "$OUT/tiling.txt"
./build_sse2/ml bench reordered "$N" | keep "$OUT/tiling.txt"
for b in 2 4 8 16 32; do ./build_sse2/ml bench tiled "$N" "$b" | keep "$OUT/tiling.txt"; done

: > "$OUT/threads.txt"
for t in 1 2 4 8 12 16 20 24 32 64; do
    ./build_sse2/ml bench threaded "$N" 16 "$t" | sed 's/^BENCH /BENCH simd=sse2 /' | keep "$OUT/threads.txt"
    ./build_native/ml bench threaded "$N" 16 "$t" | sed 's/^BENCH /BENCH simd=native /' | keep "$OUT/threads.txt"
done

: > "$OUT/simd.txt"
for s in $SIMDS; do
    for m in naive reordered; do
        ./build_$s/ml bench "$m" "$N" | sed "s/^BENCH /BENCH simd=$s /" | keep "$OUT/simd.txt"
    done
done

: > "$OUT/throughput.txt"
for w in 1 2 4 8 12 16 20 24 32; do
    ./build_native/ml throughput reordered 1000 "$w" | keep "$OUT/throughput.txt"
done

best
echo "Done. Results in $OUT/"
