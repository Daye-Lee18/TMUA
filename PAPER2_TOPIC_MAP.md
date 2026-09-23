# TMUA Paper 2 — Topic Map, 2021 · 2022 · 2023

Tutor only. Sixty questions, classified on two axes, to answer one planning question: **what actually
repeats on Paper 2, and what should a four-week course spend its time on?**

Every answer below is the official answer key. Question stems are condensed from the mark schemes in
`lessons/2021_paper2/`, `lessons/2022_paper2/` and `lessons/2023_paper2/`.

---

## 1 · The one idea this map is built on

A Paper 2 question is **not** a topic. It is a **pair**:

> **(a Paper 1 topic) × (a reasoning type)**

The topic supplies the mathematics; the reasoning type supplies the question. The same topic returns
wearing a different reasoning type, and the same reasoning type returns wearing a different topic. That is
why Paper 2 feels unpredictable while being, in fact, highly patterned — you are watching two short lists
being recombined.

Both lists are short:

| Axis | The whole list |
|---|---|
| **Reasoning types** | no reasoning (straight calculation) · counterexample · necessary/sufficient · converse, contrapositive, equivalence · quantifiers and their order · spot the first error |
| **Topics that carry them** | divisors & primes · quadrilaterals & polygons · lines & circles · number of roots of a polynomial · inequalities · logs & exponentials · trig equations · sequences · integration |

Six reasoning types, nine topics. Most cells of that grid are empty; a handful are used every single year.
**Those cells are the syllabus.**

---

## 2 · The strongest single piece of evidence

The *same false statement* has been set twice, five years apart, with a different reasoning type each time:

> **"If $a$ divides $bc$, then $a$ divides $b$ or $a$ divides $c$."**

| Sitting | What it asked | Answer |
|---|---|---|
| **2016 P2 Q13** | Here is a *proof* of it. Which line contains the first error? | **E** (line 5 — $rs$ is only a remainder if $rs<a$) |
| **2021 P2 Q4** | Which of $a{=}5,b{=}10,c{=}20$ / $a{=}8,b{=}4,c{=}4$ / $a{=}6,b{=}7,c{=}12$ is a **counterexample**? | **C** (II only) |

Identical mathematics. Completely different question. *This is the map in one example* — and it is why a
student who has only "done 2016" has not banked what 2021 wanted.

Both are now in the toolkit: the 2016 version is
[S7 Q18](toolkit/s07_spot_the_error.qmd), and the counterexample habit is
[S5 Part 3](toolkit/s05_proof_methods.qmd).

---

## 3 · The recurring slots

### Slot A — divisors and primes · **8 of 60 questions**

The most reliably repeated topic on the paper, and it is *never* asked as computation — always wrapped in a
reasoning type.

| | Question | Reasoning type |
|---|---|---|
| 2021 | **Q3** probability $\tfrac4{15}$, class size divisible by 15 | necessary condition |
| 2021 | **Q4** $a\mid bc\Rightarrow a\mid b$ or $a\mid c$ | counterexample |
| 2021 | **Q10** $n$ prime $\Rightarrow u_n$ a multiple of 3 or 5 | counterexample (smallest $n$) |
| 2022 | **Q3** $n$ prime $\Rightarrow n^2+2$ not prime | counterexample |
| 2022 | **Q7** difference of consecutive cubes is always prime | spot the error |
| 2023 | **Q4** largest run of consecutive odd primes | spot the error |
| 2023 | **Q11** $2^k+1$ prime $\Rightarrow k$ a power of 2 | which statements are equivalent |
| 2023 | **Q16** $\gcd(a,b)=7$ down a Fibonacci-type recurrence | which must be true |

**Note the trend:** the word *prime* appears once in the 2021 paper, four times in 2022 and **eight times in
2023**. Whatever the reason, the recent direction is more number theory, not less.

**The one confusion these questions are built on** — worth a whole teaching slot — is *two different meanings
of "factor"*:

- **a divisor of an integer** (2021 Q4, 2023 Q16);
- **a factor of a polynomial** (2023 Q18, and the trap in 2022 Q7).

**2022 Q7 exists purely to conflate them.** Its proof correctly shows the *polynomial* $3x^2+3x+1$ has no
integer linear factors, then concludes the *integer* $3x^2+3x+1$ is always prime. It is not: $x=5$ gives
$91=7\times13$. An irreducible polynomial does not take prime values.

### Slot B — quadrilaterals and polygons + necessary/sufficient · **almost every year**

This is the slot that produced the rhombus. Note that **the rhombus itself is 2019/2020, not 2021–23** — in
the three years asked about, the same slot is filled by a kite and a pentagon:

| Sitting | Shape | Reasoning type |
|---|---|---|
| 2019 **Q10** | parallelogram (rhombus as the sufficient-not-necessary case) | necessary / sufficient |
| 2020 **Q7** | parallelogram → square (rhombus is the counterexample) | sufficient |
| 2022 **Q11** | kite, right angle at $SPQ$ | necessary **and** sufficient |
| 2022 **Q19** | $n$-gon in a circle cut into equal-area triangles → regular? | sufficient |
| 2023 **Q9** | pentagon, one angle $108^\circ$ | statement / contrapositive / converse |

2021 has no quadrilateral — it uses a **triangle** instead (Q18, the ambiguous case: how many triangles can
be drawn?). So the slot is better described as **"a plane shape, asked as a logical condition"**, and it has
appeared in all five sittings.

### Slot C — lines and circles + reasoning · **5 of 60**

| | Question | Reasoning type |
|---|---|---|
| 2021 | **Q15** circle tangent to the $y$-axis | necessary and sufficient |
| 2022 | **Q4** which data suffices to find the distance to the centre | sufficient |
| 2022 | **Q5** line through $(1,2)$, sign of the intercepts | converse & contrapositive |
| 2023 | **Q7** $ax+by=c$, positive gradient and intercept | necessary but **not** sufficient |
| 2023 | **Q14** three lines with $a,b,c$ cycled | which implication is correct |

### Slot D — how many roots does it have · **7 of 60**

2021 Q6, Q9, Q16 · 2022 Q1, Q17 · 2023 Q18, Q19. Asked as necessary/sufficient (2021 Q6, 2023 Q18), as
"which counts are possible" (2021 Q16, 2023 Q19), and as a flawed proof (2022 Q17).

### Slot E — quantifiers and their order · **9 of 60**

2021 Q13, Q16, Q17, Q18 · 2022 Q9, Q10, Q13 · 2023 Q8, Q19. **2022 Q10 is the pure form** ($\forall\exists$
against $\exists\forall$ for $x<n$); the rest hide the quantifier in the words *every*, *possible* or *some*.

### Slot F — spot the first error · **exactly two per paper, every year**

| Sitting | Positions | Topics used |
|---|---|---|
| 2021 | **Q5**, **Q11** | trig identity $\cos x=\sqrt{1-\sin^2x}$ · algebraic inequality |
| 2022 | **Q7**, **Q17** | primes & factorisation · cubic with three real roots |
| 2023 | **Q4**, **Q10** | primes · quartic inequality by completing the square |

Two, never one, never three. **One of the pair sits in Q4–Q7 and the other in Q10–Q17** in all three years.

---

## 4 · Where things sit in the paper

| Position | What is there | Evidence |
|---|---|---|
| **Q1–Q2** | straight calculation, no reasoning at all | **6 of 6** across the three years |
| **Q3–Q4** | a counterexample question | 2021 Q4, 2022 Q3, 2023 Q3 — **3 of 3** |
| **Q4–Q7** | first spot-the-error | 2021 Q5, 2022 Q7, 2023 Q4 |
| **Q10–Q17** | second spot-the-error | 2021 Q11, 2022 Q17, 2023 Q10 |
| **Q18–Q20** | the hardest items; often heavy computation or iteration rather than logic | 2021 Q19/Q20, 2022 Q20, 2023 Q17 |

**The practical consequence:** the first two questions are free marks from Paper 1 technique, and a
counterexample question is waiting at Q3 or Q4 every year. That is a reliable fast start worth rehearsing.

---

## 5 · Counts

### By reasoning type

| Reasoning type | 2021 | 2022 | 2023 | total | share |
|---|---|---|---|---|---|
| **No reasoning — pure calculation** | 6 | 7 | 4 | **17** | 28 % |
| **Necessary / sufficient** | 5 | 5 | 5 | **15** | 25 % |
| **Quantifiers / "possible" / "every"** | 4 | 3 | 2 | **9** | 15 % |
| **Spot the first error** | 2 | 2 | 2 | **6** | 10 % |
| **Converse · contrapositive · equivalence** | 0 | 1 | 4 | **5** | 8 % |
| **Counterexample** | 2 | 1 | 1 | **4** | 7 % |
| **Other "which must be true"** | 1 | 1 | 2 | **4** | 7 % |
| | **20** | **20** | **20** | **60** | |

Counted from the per-question table in §6, which is the single source of truth — the two agree row by row.
**Necessary/sufficient is flat at exactly 5 a year**; what has moved is the *wording* it arrives in (see the
"only if" row below).

### Keyword frequency in the question papers

Counted on the actual PDFs, with `ﬃ`-type ligatures normalised first — without that, "sufficient" reads as
**0** in the 2021 paper, which is a false negative.

| word | 2021 | 2022 | 2023 |
|---|---|---|---|
| sufficient | 13 | 8 | 8 |
| necessary | 10 | 5 | 5 |
| for all | 11 | 5 | 3 |
| **only if** | 0 | 0 | **12** |
| **if and only if** | 0 | 0 | **7** |
| first error | 1 | 5 | 13 |
| converse | 1 | 4 | 1 |
| counterexample | 2 | 2 | 1 |
| prime | 1 | 4 | 8 |

Two things stand out. **"Only if" and "if and only if" are absent from 2021 and 2022 and then appear 19
times in 2023** — the phrasing moved, not the mathematics, and a student drilled only on older papers will
meet unfamiliar wording. And **"necessary"/"sufficient" dominate every year**, which is why S3 is the
largest toolkit page.

---

## 6 · The full table

Answers are the official keys. **R-type** is the reasoning type; **calc** means the question carries no
logical wrapper at all.

### 2021

| Q | Ans | Topic | R-type |
|---|---|---|---|
| 1 | D | integration | calc |
| 2 | E | coordinate geometry — square's diagonal | calc |
| 3 | C | probability + divisibility | necessary |
| 4 | C | **divisors** | **counterexample** |
| 5 | B | trig identity, $\sqrt{\;}$ sign | **spot the error** |
| 6 | D | polynomial roots vs stationary points | nec / suff |
| 7 | B | circle & square, bisecting line | calc |
| 8 | C | differentiation (Rolle) | nec / suff |
| 9 | C | existence of a real root | sufficient |
| 10 | E | sequence + **primes** | **counterexample** |
| 11 | C | algebraic inequality $a^2-4b^3$ | **spot the error** |
| 12 | B | integration & differentiation, monotonicity | which must be true |
| 13 | A | region defined by inequalities | ∀ ("every point") |
| 14 | C | simultaneous $2^x$ and $\log_2 y$ | calc |
| 15 | B | **circle tangent to an axis** | **nec and suff** |
| 16 | E | $x\lvert x\rvert=px+q$, number of roots | ∃ ("possible") |
| 17 | F | nested logs | ∀ ("all $x>1$") |
| 18 | C | **triangle, ambiguous case** | ∃ ("possible") |
| 19 | F | trig, domain trap | calc |
| 20 | E | iterated modulus + integration | calc |

### 2022

| Q | Ans | Topic | R-type |
|---|---|---|---|
| 1 | B | stationary points of a quartic | calc |
| 2 | E | binomial coefficient | calc |
| 3 | C | **primes** ($n^2+2$) | **counterexample** |
| 4 | B | **circle**, distance to centre | sufficient |
| 5 | F | **line, intercept signs** | **converse & contrapositive** |
| 6 | C | median of a list | nec / suff |
| 7 | F | **primes + factorisation** | **spot the error** |
| 8 | C | sequence, pigeonhole | "necessarily true" |
| 9 | A | inequality $x<k\Rightarrow x^2<k$ | ∀ |
| 10 | G | reals and integers | **quantifier order** |
| 11 | C | **kite** | **nec and suff** |
| 12 | F | comparing three integrals | calc |
| 13 | E | $x-xy+y<0$ | ∃ |
| 14 | D | modulus inequalities | calc |
| 15 | F | log chain | calc |
| 16 | D | sequences, min and max | which must be true |
| 17 | E | cubic with three distinct roots | **spot the error** |
| 18 | E | $(\cos x)^{\cos x}$-type graphs | calc / graph |
| 19 | B | **polygon inscribed in a circle** | **sufficient** |
| 20 | E | iterated trig, maxima | calc |

### 2023

| Q | Ans | Topic | R-type |
|---|---|---|---|
| 1 | H | surd equation | calc |
| 2 | F | integration | calc |
| 3 | C | index laws $\sqrt{x^y}=x^{\sqrt y}$ | **counterexample** |
| 4 | G | **primes**, consecutive odd | **spot the error** |
| 5 | A | $\int_0^k\sin2x$ and multiples of $\pi$ | nec and suff |
| 6 | F | $a^x=x$, number of solutions | which must be true |
| 7 | E | **line $ax+by=c$** | **necessary not sufficient** |
| 8 | D | **triangle split into two** | ∃ ("possible") |
| 9 | D | **pentagon, $108^\circ$** | **statement / contrapositive / converse** |
| 10 | A | quartic inequality, completing the square | **spot the error** |
| 11 | G | **primes**, $2^k+1$ | **equivalence** |
| 12 | C | trig equation, number of roots | sufficient / only if |
| 13 | C | five inequality statements | sufficient |
| 14 | F | **three lines, $a,b,c$ cycled** | which implication holds |
| 15 | B | recurring binary fraction | calc |
| 16 | B | **recurrence + $\gcd$** | which must be true |
| 17 | F | $\int 2^{\lceil x\rceil}$ | calc |
| 18 | D | quartic, four distinct roots | **iff** |
| 19 | H | $g=x\,f''$, root counts | ∃ ("possible") |
| 20 | D | $\int\big[f(x)^2-f(\lvert x\rvert)^2\big]$ | **only if** |

---

## 7 · Two questions that look alike but are not

**2021 Q4** (divisors) and **2023 Q14** (three lines with $a,b,c$ cycled) both present a bare $a,b,c$ and ask
for a verdict. They are **not** the same question type.

| | 2021 Q4 | 2023 Q14 |
|---|---|---|
| Topic | divisors of integers | gradients of lines |
| Reasoning type | find a **counterexample** | decide **which implication is true** |
| Method | test the three offered triples | find the invariant, then read off all seven options |
| Work | arithmetic on three cases | one line of algebra, then no cases at all |

What they *do* share is a **cyclic structure in $a,b,c$** — and in 2023 Q14 that structure is the entire
question, because cycling makes the product of the gradients collapse:

$$m_1m_2m_3=\left(-\frac ab\right)\left(-\frac bc\right)\left(-\frac ca\right)=-\frac{abc}{abc}=-1 .$$

Once that is on the page, all seven options are settled without testing anything: if two lines are
perpendicular the third gradient must be $\tfrac{-1}{-1}=1$, so it is parallel to $y=x$ — **F**.

**The teaching point is the difference, not the resemblance.** When a question offers you specific candidates
(2021 Q4) it wants case-testing; when it offers you competing general claims (2023 Q14) case-testing is a
trap and you should hunt for the invariant first. *Reading which of the two you have been handed is the skill
worth drilling.*

---

## 8 · What this implies for teaching

Ranked by marks available, not by how interesting the topic is.

1. **Necessary and sufficient — 25 %, and exactly 5 questions every year.** The single most dependable block
   of marks on the paper. Always resolve to the *exact* set first, then compare by inclusion.
   → [S3](toolkit/s03_necessary_sufficient.qmd)
2. **The calculation half — 28 %.** Almost a third of Paper 2 is Paper 1 technique with no logic at all,
   and it is front-loaded. Speed here funds the time needed at Q15–Q20.
3. **Divisors and primes — 13 %, rising.** Teach the *two meanings of "factor"* explicitly, and rehearse
   small-case testing ($n=1,2,3,4$) as a reflex. → [S5](toolkit/s05_proof_methods.qmd),
   [S7](toolkit/s07_spot_the_error.qmd)
4. **Spot the error — guaranteed two marks per paper.** Fully predictable in count and roughly predictable in
   position. → [S7](toolkit/s07_spot_the_error.qmd)
5. **"Only if" and "if and only if" phrasing.** Absent before 2023, then 19 occurrences. Anyone prepared only
   on 2021–22 wording will be surprised. → [S1](toolkit/s01_statement_forms.qmd)
6. **A plane shape asked as a logical condition.** Kite, pentagon, polygon-in-a-circle, parallelogram,
   triangle — one appears every sitting. → [S3](toolkit/s03_necessary_sufficient.qmd),
   [S2](toolkit/s02_converse_contrapositive.qmd)

**The sentence to leave a student with:** *on Paper 2, first name the reasoning type, then do the
mathematics.* Almost every lost mark in the audits comes from doing competent mathematics on the wrong
question — testing cases when an invariant was wanted, or proving "always" when only "possible" was asked.

---

## Sources

Question papers and official answer keys: `_resources/past_papers/{2021,2022,2023}/`.
Worked mark schemes in this repo: `lessons/2021_paper2/`, `lessons/2022_paper2/`, `lessons/2023_paper2/`,
with question-type practice sets in the matching `*_extended/` folders.
The 2019/2020 rhombus questions cited in Slot B are `_resources/past_papers/{2019,2020}/`.
