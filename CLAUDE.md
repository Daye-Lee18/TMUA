# CLAUDE.md — TMUA project

Guidance for Claude Code when working in the `TMUA/` folder. These are the authoring conventions for this
Quarto site (TMUA prep for the student 여운주 / Chloe Yeo). They override defaults.

The complete, canonical authoring rules are in [`AGENTS.md`](AGENTS.md). Read and follow that file before
creating or editing any tutoring material. If this file and `AGENTS.md` differ, `AGENTS.md` takes precedence.

## 작업 원칙 
- 모든 자료는 맨 첫 페이지인 index.qmd 에서 볼 수 있도록 구성한다. 
- 모든 자료에 있는 문제 (questions)에 대한 답은 토글 (Toggle)안에 적어둔다. 
    - 만약 True/False 문제 혹은 Fill in the blank 문제가 많은 quiz 문서는 각 테이블아래에 toggle을 두어 전체 테이블에 대한 답변을 한 번에 적어둔다. 
- 모든 자료는 영어로 작성한다. 
- 문제 풀이나 concept 설명 시 그래프가 필요한 경우는 빠짐없이 그래프를 그린다.
    - 그래프의 개수는 가로로 최대 2개이며, 그 이상 필요한 경우는 세로로 나열하여 그린다. 
- Past paper table 
    - 1st column: 기존 past paper pdf 
    - 2nd column: 문제 풀이에 대한 Mark Scheme 파일은 별도로 두지 않고, 항상 해당 문제 아래에`Solution` 토글을 만들어서 구성해줘. 
- Solution toggle 아래에서 `Working` box 를 별도로 두어 학생이 해당 문제를 풀 공간을 만든다. 


## Build / render

```bash
quarto render <file>.qmd --to html    # output goes to ../_output/ (mirrors the source tree)
```

Verify every numeric/algebraic answer with python (sympy/numpy) before writing. PDF math extraction is
unreliable — render past-paper pages to images (`pdftoppm -png -r 145 -f N -l N`) and read them visually.
