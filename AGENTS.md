# TMUA Tutoring Content Guidelines

These instructions apply to all files in this project.

## 1. Student-facing output

- Write all student-facing teaching materials in English.
- Never expose prompts, production instructions, internal notes, or the requested learner level in the finished page.
  - For example, if asked to explain something at Year 8 level, use suitable language without writing “Year 8 level” on the page.
- Make every new resource reachable from the relevant root `index.qmd`. Add or update its index entry as part of the same task.
- Keep source information and question provenance accurate and visible where appropriate.

## 2. Standard page structure

Every teaching session has two student-facing pages:

1. **Concept notes and class problems**
2. **Homework**

The concept/class page follows this order:

1. A compact revision sheet or formula sheet that can be skimmed immediately before the exam.
2. A `Notes` section with full prose explanations.
3. Short, carefully chosen drills after each concept.
4. Exam-standard class problems covering every identified question type.

Keep summaries genuinely brief. Put explanations, justifications, examples, and learning exercises in `Notes`, not in the revision boxes.

## 3. Question-led teaching

- Teach primarily through questions rather than long stretches of exposition.
- Follow every concept with several short drills, especially questions designed around common misconceptions or easily confused cases.
- Use the drills both to reinforce the current idea and to introduce the next small extension.
- Cover every identified question type, not merely one representative example.
- Base difficulty on the target examination. If its questions are too easy, add comparable or harder material from suitable admissions tests such as TMUA, MAT, and STEP.

## 4. Answers, toggles, and working space

- Put the answer or worked solution to every question in a collapsed toggle headed `Solution`.
- After each solution toggle, include a separate `Working` box in which the student can solve the problem.
- For a quiz dominated by True/False or fill-in-the-blank tables:
  - leave all answer cells blank;
  - place one collapsed `Solution` toggle directly below each table;
  - give all answers for that table together inside the toggle.
- Do not create a separate mark-scheme page for a past-paper question collection. Keep each solution immediately below its question.

## 5. Mathematical solution standard

Write solutions so that a confident Year 9 student can follow every transition, without stating that target level on the page.

- Do not compress a derivation into one line.
- Break calculations into a clear multi-line progression.
- Use numbered steps or bold checkpoints when they improve navigation.
- Add concise English explanations between important transitions.
- Explicitly explain algebraic manipulation, modular reduction, theorem use, discarded terms, domain restrictions, and rejected roots.
- Where helpful, give both:
  - a clean mathematical derivation; and
  - a short intuitive explanation of the core idea.
- Verify numerical and algebraic answers before publication.

## 6. Graphs and diagrams

- Include every graph needed to understand a concept, question, or solution.
- In general material, place at most two graphs side by side. If more are required, continue on new rows or stack them vertically.
- Inside a solution toggle, stack two or more graphs vertically.
- Include all graphs that form part of an original past-paper question as well as any additional graphs required by the explanation.
- Label axes, key points, intercepts, boundaries, and asymptotes when they matter to the reasoning.

## 7. Clinic construction

Treat every clinic as a comprehensive topic bank, not a small sample worksheet.

Before authoring a clinic:

1. Search all locally available supplementary resources, including other tests, past papers, mock papers, marked scripts, specifications, and revision notes.
2. Search authoritative online sources for additional publicly accessible specifications, papers, notes, and suitably difficult questions when local coverage is incomplete.
3. Include or adapt questions representing every closely related type found in those sources.
4. Add harder extensions from the target exam or comparable examinations.
5. Record source, year, paper, and question number whenever known.

Do not silently omit a type because it appears only once or is difficult. The clinic should prepare the student for the full family of relevant questions.

## 8. Research and coverage statistics

Before preparing the teaching pages, create and retain the underlying coverage audit.

- Include the target examination and comparable UK admissions tests such as TMUA, MAT, and STEP where relevant.
- Collect the relevant specifications, past papers, and revision materials.
- For each topic, record:
  - examination and paper;
  - year;
  - question number;
  - question type or subtopic;
  - difficulty where useful; and
  - total number of matching questions.
- Present the audit as a separate table and use it to justify the scope of the concept page, class problems, and homework.

## 9. Concept notes and class problems

- Use the coverage audit to ensure that every identified question type is taught and practised.
- Start with a concise, exam-ready revision section.
- Follow it with `Notes` containing full explanations and related drills.
- Prefer authentic exam difficulty. Supplement easy source material with harder variants from comparable exams.
- Every class problem must have a `Solution` toggle and a `Working` box.

## 10. Homework

- Create at least 20 substantive homework questions unless the user explicitly requests a shorter set.
- Cover every question type identified in the audit.
- Use sourced past-paper patterns to create questions of equal or greater difficulty.
- Include misconception checks, mixed questions, and harder extensions rather than repeating the same surface form.
- Every homework problem must have a `Solution` toggle and a `Working` box unless the user explicitly requests a student-only version.

## 11. Past-paper and mark-scheme pages

For each question, use this order:

1. Reproduce the complete question, including all necessary figures and graphs.
2. Add a collapsed `Solution` toggle immediately below it.
3. Give a stepwise solution following the mathematical solution standard above.
4. Put any graph required by the solution inside the toggle; stack multiple graphs vertically.
5. Add the separate `Working` box after the toggle.

For a past-paper index or table:

- Column 1 links to the original past-paper PDF.
- Column 2 links to the page containing the questions and inline solution toggles.
- Do not link to a separate mark-scheme file when the solutions are already inline.

## 12. Memorisation and recall sheets

- Leave True/False fields and answer fields blank in the visible sheet.
- Put the completed answers in a collapsed `Solution` toggle below the relevant table or exercise.
- Keep the visible portion suitable for active recall rather than passive rereading.

## 13. Admissions-test source preparation

For a new admissions test, first obtain or catalogue the publicly accessible:

- official specification;
- past papers;
- official mark schemes where available;
- examiner or revision guidance; and
- relevant notes.

Add these materials to the project’s resource index before building the course materials. Respect source licences and link to material that cannot appropriately be reproduced.

## 14. Curriculum spreadsheets

Create curricula as `.xlsx` workbooks.

- Design each session so that its contents can be covered carefully within two hours.
- Include columns that make the topic, skills, activities, question coverage, and reason for studying the session immediately clear to students.
- Within content cells, separate distinct items with line breaks for readability.
- Use restrained formatting with light grey, light blue, and similarly pale colours.
- Keep the workbook practical and easy to scan; avoid decorative formatting that obscures the plan.

## 15. Build and verification

- Render every changed Quarto page before finishing:

  ```bash
  quarto render <file>.qmd --to html
  ```

- Confirm that new pages are linked from the relevant `index.qmd` and that all link targets exist.
- Check mathematical notation, toggles, figures, and graph layout in the rendered output.
- Use reliable computation such as SymPy or NumPy to verify numerical and algebraic results when appropriate.
- For PDF questions containing mathematical notation or diagrams, render the relevant PDF pages to images and inspect them visually rather than trusting extracted text alone.
