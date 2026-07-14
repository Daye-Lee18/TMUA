# TMUA

Preparation materials for the **Test of Mathematics for University Admission**, published as a Quarto
site: <https://daye-lee18.github.io/TMUA/>

## Build

```bash
quarto render     # → _output/
quarto preview    # live preview
```

Pushing to `main` deploys to GitHub Pages via `.github/workflows/publish.yml`.

Dependencies: `pip install jupyter matplotlib numpy scipy sympy` + `quarto install`.

## Official PDFs

The past papers, answer keys and official notes are **not committed** — they belong to UAT-UK and the
site links to their official locations rather than rehosting them. To get a local copy:

```bash
bash scripts/fetch_resources.sh
```

That downloads 51 PDFs into `_resources/` (git-ignored):

```
_resources/
  past_papers/{specimen,2016…2023}/   paper 1 & 2, worked answers, answer keys
  notes/    Notes on Mathematics (Paper 1) · Notes on Logic and Proof (Paper 2)
  spec/     content specification, course list, explanation of results
```

2023 is the last paper-based sitting: since 2024 the TMUA has been computer-based at Pearson VUE and
no further papers are released, so this archive is complete.

## Structure

| Path | |
|---|---|
| `index.qmd` | Landing page |
| `about/format.qmd` | Test format, scoring, what changed in 2024, how to prepare |
| `papers/index.qmd` | Every published paper, with official links |
| `lessons/` | One lesson per paper — see `MATERIALS_SPEC.md` |
| `toolkit/` | Paper 2 logic and proof (Section 2 of the spec) |
| `MATERIALS_SPEC.md` | Authoring rules for lesson materials |

Lesson materials follow the house style of `../math_tutoring` (concept boxes, method boxes, guided
notes, mandatory graphs, reasoning sentences in the mark scheme), plus TMUA-specific rules: timing
flags and a distractor table on every question.
