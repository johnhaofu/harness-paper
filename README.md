# Inference-Time Scaffolding for Small-Model Math Reasoning

**It's the Termination, Not the Tools**

Short paper showing that the +7.58pp / +10.24pp accuracy lift from a 2-tool agent harness on GSM8K is driven almost entirely by a single 80-token control-flow nudge, not by the tools.

## Headline result

Qwen3.5-2B + OPD + GRPO + Harness on GSM8K, n=1319 (σ ≈ 0.95 pp):

| configuration | accuracy | Δ vs Harness |
|---|---|---|
| full Harness (2 tools + nudge) | 86.05 | — |
| − python tool | 86.58 | +0.53 (< 1σ) |
| − validate tool | 86.20 | +0.15 (< 1σ) |
| − post-PASS nudge | **81.80** | **−4.25 (> 2σ)** |
| base CoT (no scaffolding) | 78.47 | −7.58 |

Either tool can be removed without measurable change. Removing the nudge drops accuracy by more than two standard errors.

## Files

- `paper.tex` — LaTeX source
- `references.bib` — bibliography
- `paper.pdf` — compiled draft (8 pages)
- `Makefile` — `make` to rebuild

## Build

Requires a TeX distribution (e.g., MacTeX, TeX Live):

```bash
make
```

## Contact

`john.hao.fu@gmail.com`
