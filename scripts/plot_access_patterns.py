"""conv2 access patterns (first 2 output pixels), naive vs reordered loop order -> results/plots/access_*.png"""
from pathlib import Path

import matplotlib

matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np

W, C = 60, 32
Q, M = 56, 32
R = S = 5
PIXELS = 2
OUT = Path(__file__).resolve().parent.parent / "results" / "plots"


def trace(order):
    w, x, o = [], [], []
    for pix in range(PIXELS):
        p, q = divmod(pix, Q)
        if order == "naive":
            loops = ((m, r, s, c) for m in range(M) for r in range(R) for s in range(S) for c in range(C))
        else:
            loops = ((m, r, s, c) for r in range(R) for s in range(S) for c in range(C) for m in range(M))
        for m, r, s, c in loops:
            w.append(((r * S + s) * C + c) * M + m)
            x.append(((p + r) * W + (q + s)) * C + c)
            o.append((p * Q + q) * M + m)
    return {"weights": np.array(w), "input": np.array(x), "output": np.array(o)}


def stride_summary(idx):
    d = np.abs(np.diff(idx))
    return (d < 8).mean()


if __name__ == "__main__":
    OUT.mkdir(parents=True, exist_ok=True)
    traces = {k: trace(k) for k in ("naive", "reordered")}
    titles = {"weights": "Weights (R, S, C, M)", "input": "Input feature map (H, W, C)",
              "output": "Output feature map (P, Q, M)"}
    zoom = 256

    for name, title in titles.items():
        fig, axes = plt.subplots(2, 2, figsize=(10, 6))
        for row, order in enumerate(("reordered", "naive")):
            idx = traces[order][name]
            near = stride_summary(idx)
            axes[row, 0].plot(idx, ",", color="#1D4ED8" if order == "reordered" else "#B91C1C")
            axes[row, 0].set_title(f"{order}: 2 output pixels, {len(idx):,} MACs; "
                                   f"{near:.0%} of steps < 8 floats (32-B line)", fontsize=9)
            axes[row, 1].plot(idx[:zoom], ".-", ms=3, lw=0.5, color="#1D4ED8" if order == "reordered" else "#B91C1C")
            axes[row, 1].set_title(f"{order}: first {zoom} MACs", fontsize=9)
            for ax in axes[row]:
                ax.set_ylabel("Element index")
                ax.grid(alpha=0.3)
        for ax in axes[1]:
            ax.set_xlabel("Access number (program order)")
        fig.suptitle(f"conv2 access pattern: {title}")
        fig.tight_layout()
        fig.savefig(OUT / f"access_{name}.png", dpi=150)
        plt.close(fig)
        print(f"wrote {OUT / f'access_{name}.png'}")
        for order in ("reordered", "naive"):
            print(f"  {order:9s} {name:7s}: {stride_summary(traces[order][name]):.1%} steps under 8 floats")
