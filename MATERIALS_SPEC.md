# Materials Spec — TMUA Lessons

Authoring rules for every lesson folder `lessons/<sitting>_paper<N>/`. Adapted from
`math_tutoring/yena_2026_summer/MATERIALS_SPEC.md`; the house style (concept boxes, method boxes,
guided notes, graphs, reasoning sentences) is unchanged. What follows records the **TMUA-specific**
rules on top of it, and the parts of the house style that must not be dropped.

## Audience

A-Level student (or equivalent) preparing for the TMUA, sitting the test in October or January.
Strong at A-Level maths; **has never met Section 2 logic and proof**; and is almost certainly too slow
for the paper. **English only — no Korean anywhere in the materials.**

## Unit of work

**One paper = one lesson.** `2023 Paper 1` is a lesson; `2023 Paper 2` is a different lesson.
Never mix the two papers into one session — Paper 1 is speed under calculation, Paper 2 is reasoning,
and they need different teaching.

Folder: `lessons/2023_paper1/`, `lessons/2023_paper2/`, …

## Files per lesson (exactly 3)

1. **`core_concepts.qmd`** — what this paper tests, taught *before* the paper is opened.
2. **`walkthrough_student.qmd`** — all 20 questions as guided notes.
3. **`walkthrough_ms.qmd`** — full solutions + distractor analysis.

**There is no per-lesson teaching script.** `core_concepts.qmd` is written to be **read aloud** — the
tutor teaches straight from it, so the narration lives in the prose rather than in a second document
that has to be kept in sync. The things that repeat every session (session shape, go-to phrases,
pronunciation, walkthrough prompts) live once in **`TEACHING_GUIDE.md`** at the repository root.

Where a specific question needs a spoken explanation, put it in `walkthrough_ms.qmd` as a
`::: {.callout-tip}` titled `## Say this aloud`.

### 1. `core_concepts.qmd`

- YAML: `title: "TMUA · <Sitting> Paper <N> — Core Concepts"`, `format: html`,
  `execute: echo: false, warning: false`. Add `jupyter: python3` only if the file has Python cells.
- **Write it to be spoken.** Full sentences, second person, the reasoning said out loud — not bullet
  fragments the tutor has to re-inflate into speech. If a paragraph cannot be read aloud to a student
  as it stands, rewrite it. This is the file the lesson is taught from.
- Open with **"What this paper tests"**: the 4–6 techniques that actually carry this paper (derived by
  reading all 20 questions first), each tagged with its specification reference (`MM3`, `Arg2`, …).
- Every definition/result goes in an always-visible concept box, **preceded by one motivating lead-in
  sentence** — never open a section cold with a box:
  ```
  ::: {.callout-tip}
  ## Concept — <name>
  :::
  ```
- **Concept box and Method box must not overlap.** Concept = the **what and why** (never a step list).
  Method = the **how** (numbered `1. 2. 3.` steps, one per line):
  ```
  ::: {.callout-note}
  ## Method — <when you see this type>
  :::
  ```
- **Common mistakes** go in a `::: {.callout-warning}` holding a two-column table
  (`| ✗ Mistake | ✓ Correct |`), one row per slip, each fix carrying a tiny numeric example.
  Never a prose paragraph.
- **Graph-related content MUST have a graph.** Any sketch, curve, asymptote, region, intersection or
  transformation gets a real matplotlib cell — never a words-only description. Asymptotes dashed and
  labelled; excluded boundaries dashed, included solid; intersections marked and labelled;
  transformations show original *and* image on the same axes. Multi-panel figures stack **vertically
  (n×1)** so they print without cut-off. Colours: roots/key points `#1f77b4`, y-intercepts `#2ca02c`,
  asymptotes/excluded `#d62728`. 2–4 figures per file.
- Math: `$...$` inline, `$$...$$` display, standard MathJax LaTeX.

### 2. `walkthrough_student.qmd`

- Header block: **"20 questions · 75 minutes · no calculator · no formula book · no penalty for a
  wrong answer."** Plus the per-question target: **3 min 45 s**.
- Each question restated in full with its five options **A–E**, followed by a **fill-in-the-blank
  skeleton** the student completes — generous blanks on routine steps, key-decision blanks only on the
  hardest. Never print the answer here.
- State the **required answer form** where it is not simply "choose an option" (exact surd, interval,
  number of roots, …), block-level.
- Mark each question with a **timing flag**: `⏱ 2 min` (should be quick), `⏱ 4 min` (on pace),
  `⏱ 6 min+` (a question to *recognise and leave for the second pass*). Teaching students to abandon
  a question is part of teaching the test.

### 3. `walkthrough_ms.qmd`

- Same 20 questions, each followed by a collapsed toggle:
  ```
  ::: {.callout-note collapse="true"}
  ## Solution
  :::
  ```
- **Every solution carries its reasoning, not just the algebra.** Before each key step, an ***italic*
  English sentence saying why we do it** — the idea the step rests on — so the tutor can say it aloud.
  Cover especially: why a substitution is legal, why a root is rejected, what a condition translates
  to, why a case split is exhaustive.
- **Two routes where they differ.** Give the **fast route first** (the one that fits in 3¾ minutes)
  and, where the official worked answers take a slower path, show that as *"the safe route"* and name
  the **cue** that tells you the fast one is available. This is the core value of the whole document.
- **Distractor table — mandatory, one per question.** Every wrong option is the result of a specific
  mistake; name it:
  ```
  | Option | Where it comes from |
  |---|---|
  | A | Forgot the negative root |
  | C | ✓ correct |
  | D | Stopped one step early — this is $x$, not $x^2$ |
  ```
  If a distractor's origin cannot be identified, say so rather than inventing one.
- Verify **every** answer against the **official answer key** before writing the toggle, and verify any
  algebra by recomputation (sympy) — see Quality bar.

## Sources of truth

| For | Use |
|---|---|
| What can be asked | `_resources/spec/TMUA_Content_Specification_2026-27_CURRENT.pdf` |
| Paper 1 content, spec line by spec line | `_resources/notes/Notes_on_Mathematics_for_TMUA_and_ESAT_M2.pdf` (MM1–MM8) |
| Paper 2 logic and proof | `_resources/notes/Notes_on_Logic_and_Proof_for_TMUA_Paper2.pdf` (Arg1–4, Prf1–5, Err1–2) |
| The correct answers | the sitting's official **answer key** PDF — always, without exception |
| A worked route | the sitting's official **worked answers** PDF (often the slow route; improve on it) |

Run `bash scripts/fetch_resources.sh` to populate `_resources/` (git-ignored).

## Quality bar

- **Never state an answer that has not been checked against the official answer key.** A wrong key in
  a mark scheme destroys the student's trust in every other page.
- Verify algebra by recomputation (sympy) before writing a solution toggle.
- Stay inside the specification — do not drift into A2-only content the TMUA cannot ask.
- After writing the 3 files, run `quarto render lessons/<folder>` from the repository root and fix
  every error until it renders cleanly.
- Check any new figure by **looking at the rendered PNG**, not just by checking the cell ran — labels
  collide, legends cover annotations, and a figure the student cannot read is a figure that failed.
- Add the lesson to the table in `lessons/index.qmd` and to the `Lesson` column in `papers/index.qmd`.
