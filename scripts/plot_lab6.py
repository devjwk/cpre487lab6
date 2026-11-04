"""Tables and charts from results/x86 and results/zedboard -> results/plots."""
import re
import sys
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt

ROOT = Path(__file__).resolve().parent.parent
RES = ROOT / "results"
PLOTS = RES / "plots"


def parse(path, tag):
    rows = []
    if not path.exists():
        return rows
    for line in path.read_text(errors="replace").splitlines():
        start = line.find(tag + " ")
        if start < 0:
            continue
        row = dict(re.findall(r"(\w+)=(\S+)", line[start:]))
        for k, v in row.items():
            try:
                row[k] = float(v)
            except ValueError:
                pass
        rows.append(row)
    return rows


def table(title, header, rows):
    print(f"\n{title}")
    print("| " + " | ".join(header) + " |")
    print("|" + "---|" * len(header))
    for r in rows:
        print("| " + " | ".join(str(c) for c in r) + " |")


def save(fig, name):
    PLOTS.mkdir(parents=True, exist_ok=True)
    fig.tight_layout()
    fig.savefig(PLOTS / name, dpi=150)
    plt.close(fig)
    print(f"wrote {PLOTS / name}")


def tiling(platform, path):
    rows = parse(path, "BENCH")
    if not rows:
        return
    by = {r["mode"]: r for r in rows if r["mode"] != "tiled"}
    tiled = [r for r in rows if r["mode"] == "tiled"]
    base = by["naive"]["mean_ms"]
    out = [["naive (before reordering)", "-", f"{base:.2f}", f"{by['naive']['conv2_ms']:.2f}", "1.00"]]
    if "reordered" in by:
        r = by["reordered"]
        out.append(["reordered", "-", f"{r['mean_ms']:.2f}", f"{r['conv2_ms']:.2f}", f"{base / r['mean_ms']:.2f}"])
    for r in tiled:
        out.append(["tiled", int(r["block"]), f"{r['mean_ms']:.2f}", f"{r['conv2_ms']:.2f}", f"{base / r['mean_ms']:.2f}"])
    table(f"{platform}: tiling (mean of {int(rows[0]['iters'])} inferences)",
          ["Version", "Block", "Inference ms", "conv2 ms", "Speedup vs naive"], out)

    fig, ax = plt.subplots(figsize=(6, 3.6))
    blocks = [int(r["block"]) for r in tiled]
    ax.plot(blocks, [r["mean_ms"] for r in tiled], "o-", color="#1D4ED8", label="tiled")
    ax.axhline(base, color="#B91C1C", ls="--", label="naive (non-tiled, not reordered)")
    if "reordered" in by:
        ax.axhline(by["reordered"]["mean_ms"], color="#6B7280", ls=":", label="reordered (non-tiled)")
    ax.set_xscale("log", base=2)
    ax.set_xticks(blocks, [str(b) for b in blocks])
    ax.set_xlabel("Block size")
    ax.set_ylabel("Single-image inference latency (ms)")
    ax.set_title(f"Tiled convolution, {platform}")
    ax.legend(fontsize=8)
    ax.grid(alpha=0.3)
    save(fig, f"tiling_{platform.lower()}.png")


def threads(path):
    rows = parse(path, "BENCH")
    if not rows:
        return
    fig, ax = plt.subplots(figsize=(6, 3.6))
    out = []
    one = {r["simd"]: r["mean_ms"] for r in rows if r["threads"] == 1}
    for simd, color in (("sse2", "#6B7280"), ("native", "#1D4ED8")):
        rs = [r for r in rows if r["simd"] == simd]
        ax.plot([r["threads"] for r in rs], [r["mean_ms"] for r in rs], "o-", color=color,
                label="-O3 (default)" if simd == "sse2" else "-O3 -march=native")
        for r in rs:
            out.append([simd, int(r["threads"]), f"{r['mean_ms']:.2f}", f"{r['conv2_ms']:.2f}",
                        f"{one[simd] / r['mean_ms']:.2f}", f"{one['sse2'] / r['mean_ms']:.2f}"])
    table("x86: threads (reordered loops in every conv layer)",
          ["SIMD", "Threads", "Inference ms", "conv2 ms", "Speedup vs 1 thread", "Speedup vs 1 thread -O3"], out)
    ax.set_xscale("log", base=2)
    ticks = sorted({int(r["threads"]) for r in rows})
    ax.set_xticks(ticks, [str(t) for t in ticks])
    ax.set_xlabel("Threads per convolution layer")
    ax.set_ylabel("Single-image inference latency (ms)")
    ax.set_title("Multi-threaded convolution, lab computer")
    ax.legend(fontsize=8)
    ax.grid(alpha=0.3)
    save(fig, "threads_x86.png")


def simd(path):
    rows = parse(path, "BENCH")
    if not rows:
        return
    names = list(dict.fromkeys(r["simd"] for r in rows))
    out = []
    fig, ax = plt.subplots(figsize=(6, 3.6))
    width = 0.38
    for i, mode in enumerate(("naive", "reordered")):
        vals = [next(r["mean_ms"] for r in rows if r["simd"] == s and r["mode"] == mode) for s in names]
        ax.bar([x + (i - 0.5) * width for x in range(len(names))], vals, width, label=f"{mode} loops",
               color="#93C5FD" if mode == "naive" else "#1D4ED8")
    none = {r["mode"]: r["mean_ms"] for r in rows if r["simd"] == names[0]}
    for r in rows:
        out.append([r["simd"], r["mode"], f"{r['mean_ms']:.2f}", f"{none[r['mode']] / r['mean_ms']:.2f}"])
    table(f"x86: SIMD flags (speedup vs {names[0]})", ["SIMD", "Loops", "Inference ms", "Speedup"], out)
    ax.set_xticks(range(len(names)), names)
    ax.set_ylabel("Single-image inference latency (ms)")
    ax.set_title("SIMD compiler flags, lab computer")
    ax.legend(fontsize=8)
    ax.grid(alpha=0.3, axis="y")
    save(fig, "simd_x86.png")


def throughput(path):
    rows = parse(path, "THROUGHPUT")
    if rows:
        table("x86: throughput (one model per worker)", ["Workers", "img/s"],
              [[int(r["workers"]), f"{r['img_per_s']:.1f}"] for r in rows])


def zed_simd():
    plain = parse(RES / "zedboard" / "sweep.txt", "BENCH")
    neon = parse(RES / "zedboard" / "sweep_neon.txt", "BENCH")
    if not (plain and neon):
        return
    out = []
    for a, b in zip(plain, neon):
        label = a["mode"] + (f" B={int(a['block'])}" if a["mode"] == "tiled" else "")
        out.append([label, f"{a['mean_ms']:.1f}", f"{b['mean_ms']:.1f}", f"{a['mean_ms'] / b['mean_ms']:.2f}"])
    table("ZedBoard: VFP (default) vs NEON", ["Version", "VFP ms", "NEON ms", "Speedup"], out)


ASM_PATTERNS = {
    "scalar (ss)": r"\b(v?(mul|add|fmadd\d*)ss)\b",
    "packed xmm": r"\b(v?(mul|add|fmadd\d*)ps)\b[^\n]*%xmm",
    "packed ymm": r"\b(v?(mul|add|fmadd\d*)ps)\b[^\n]*%ymm",
    "packed zmm": r"\b(v?(mul|add|fmadd\d*)ps)\b[^\n]*%zmm",
    "VFP scalar": r"\bv(mul|add|mla|fma)\.f32\s+s\d",
    "NEON quad": r"\bv(mul|add|mla|fma)\.f32\s+q\d",
}


def asm_summary():
    files = (sorted(ROOT.glob("build_*/layers/Convolutional.s")) + sorted((RES / "x86").glob("asm_*.s"))
             + sorted((RES / "zedboard").glob("asm_*.s")))
    if not files:
        return
    rows = []
    for f in files:
        text = f.read_text(errors="replace")
        counts = {k: len(re.findall(v, text)) for k, v in ASM_PATTERNS.items()}
        rows.append([f.relative_to(ROOT)] + [counts[k] for k in ASM_PATTERNS])
        widest = next((k for k in reversed(list(ASM_PATTERNS)) if counts[k] and "scalar" not in k),
                      next((k for k in ASM_PATTERNS if counts[k]), None))
        if widest:
            lines = text.splitlines()
            i = next(n for n, line in enumerate(lines) if re.search(ASM_PATTERNS[widest], line))
            print(f"\n--- {f.relative_to(ROOT)}: {widest} ---")
            print("\n".join(lines[max(0, i - 4):i + 8]))
    table("FP instructions in Convolutional.s", ["File"] + list(ASM_PATTERNS), rows)


if __name__ == "__main__":
    tiling("ZedBoard", RES / "zedboard" / "sweep.txt")
    tiling("x86", RES / "x86" / "tiling.txt")
    threads(RES / "x86" / "threads.txt")
    simd(RES / "x86" / "simd.txt")
    throughput(RES / "x86" / "throughput.txt")
    zed_simd()
    asm_summary()
    sys.exit(0)
