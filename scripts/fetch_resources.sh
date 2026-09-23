#!/usr/bin/env bash
# Re-download the official TMUA PDFs into _resources/ (git-ignored, not redistributed).
#
#   bash scripts/fetch_resources.sh
#
# Source: UAT-UK, https://esat-tmua.ac.uk/prepare/
# 2023 is the last paper-based sitting; from 2024 the TMUA is computer-based and
# no further papers are published, so this archive is complete.
set -euo pipefail

cd "$(dirname "$0")/.."
S3=https://uat-wp.s3.eu-west-2.amazonaws.com/wp-content/uploads

get() { # get <url-path> <dest>
  mkdir -p "$(dirname "$2")"
  curl -sSL --retry 3 -o "$2" "$S3/$1"
  head -c4 "$2" | grep -q '%PDF' || { echo "NOT A PDF: $2" >&2; exit 1; }
  printf '  %s\n' "$2"
}

echo "Content specification + course list →  _resources/spec/"
get 2024/05/03165619/TMUA_Content_Specification.pdf          _resources/spec/TMUA_Content_Specification_2026-27_CURRENT.pdf
get 2025/04/30103002/TMUA_Content_Specification_April2025.pdf _resources/spec/TMUA_Content_Specification_2025-26_archive.pdf
get 2026/04/01172717/Course_List_2027_Entry_Final.pdf        _resources/spec/Course_List_2027_Entry.pdf

echo "Official notes (written by the TMUA setters) →  _resources/notes/"
get 2026/06/30103537/Notes_on_Mathematics_-for_TMUA_and_ESAT_M2.pdf _resources/notes/Notes_on_Mathematics_for_TMUA_and_ESAT_M2.pdf
get 2025/06/25160507/Notes_on_Logic_and_Proof_June2025.pdf          _resources/notes/Notes_on_Logic_and_Proof_for_TMUA_Paper2.pdf

echo "Past papers →  _resources/past_papers/"
D=_resources/past_papers/specimen
get 2024/05/07141417/TMUA-early-specimen-paper-1.pdf                $D/TMUA-early-specimen-paper-1.pdf
get 2024/05/07141418/TMUA-early-specimen-paper-1-worked-answers.pdf $D/TMUA-early-specimen-paper-1-worked-answers.pdf
get 2024/05/07141413/TMUA-early-specimen-paper-2.pdf                $D/TMUA-early-specimen-paper-2.pdf
get 2024/05/07141415/TMUA-early-specimen-paper-2-worked-answers.pdf $D/TMUA-early-specimen-paper-2-worked-answers.pdf
get 2024/05/07141414/TMUA-early-specimen-paper-answer-keys.pdf      $D/TMUA-early-specimen-paper-answer-keys.pdf

D=_resources/past_papers/2016
get 2024/05/07125112/TMUA-2016-paper-1.pdf                $D/TMUA-2016-paper-1.pdf
get 2024/05/07125113/TMUA-2016-paper-1-worked-answers.pdf $D/TMUA-2016-paper-1-worked-answers.pdf
get 2024/05/07125102/TMUA-2016-paper-2.pdf                $D/TMUA-2016-paper-2.pdf
get 2024/05/07125106/TMUA-2016-paper-2-worked-answers.pdf $D/TMUA-2016-paper-2-worked-answers.pdf
get 2024/05/07125113/TMUA-2016-answer-keys.pdf            $D/TMUA-2016-answer-keys.pdf

D=_resources/past_papers/2017
get 2024/05/07125230/TMUA-2017-paper-1.pdf                $D/TMUA-2017-paper-1.pdf
get 2024/05/07125231/TMUA-2017-paper-1-worked-answers.pdf $D/TMUA-2017-paper-1-worked-answers.pdf
get 2024/05/07125224/TMUA-2017-paper-2.pdf                $D/TMUA-2017-paper-2.pdf
get 2024/05/07125228/TMUA-2017-paper-2-worked-answers.pdf $D/TMUA-2017-paper-2-worked-answers.pdf
get 2024/05/07125232/TMUA-2017-answer-keys.pdf            $D/TMUA-2017-answer-keys.pdf

D=_resources/past_papers/2018
get 2024/05/07125407/TMUA-2018-paper-1.pdf                $D/TMUA-2018-paper-1.pdf
get 2024/05/07125413/TMUA-2018-paper-1-worked-answers.pdf $D/TMUA-2018-paper-1-worked-answers.pdf
get 2024/05/07125404/TMUA-2018-paper-2.pdf                $D/TMUA-2018-paper-2.pdf
get 2024/05/07125406/TMUA-2018-paper-2-worked-answers.pdf $D/TMUA-2018-paper-2-worked-answers.pdf
get 2024/05/07125413/TMUA-2018-answer-keys.pdf            $D/TMUA-2018-answer-keys.pdf

D=_resources/past_papers/2019
get 2024/05/07140825/TMUA-2019-paper-1.pdf                $D/TMUA-2019-paper-1.pdf
get 2024/05/07140826/TMUA-2019-paper-1-worked-answers.pdf $D/TMUA-2019-paper-1-worked-answers.pdf
get 2024/05/07140823/TMUA-2019-paper-2.pdf                $D/TMUA-2019-paper-2.pdf
get 2024/05/07140824/TMUA-2019-paper-2-worked-answers.pdf $D/TMUA-2019-paper-2-worked-answers.pdf
get 2024/05/07140827/TMUA-2019-answer-keys.pdf            $D/TMUA-2019-answer-keys.pdf

D=_resources/past_papers/2020
get 2024/05/07140953/TMUA-2020-paper-1.pdf                $D/TMUA-2020-paper-1.pdf
get 2024/05/07140955/TMUA-2020-paper-1-worked-answers.pdf $D/TMUA-2020-paper-1-worked-answers.pdf
get 2024/05/07140951/TMUA-2020-paper-2.pdf                $D/TMUA-2020-paper-2.pdf
get 2024/05/07140952/TMUA-2020-paper-2-worked-answers.pdf $D/TMUA-2020-paper-2-worked-answers.pdf
get 2024/05/07140956/TMUA-2020-answer-keys.pdf            $D/TMUA-2020-answer-keys.pdf

D=_resources/past_papers/2021
get 2024/05/07141119/TMUA-2021-paper-1.pdf                $D/TMUA-2021-paper-1.pdf
get 2024/05/07141121/TMUA-2021-paper-1-worked-answers.pdf $D/TMUA-2021-paper-1-worked-answers.pdf
get 2024/05/07141117/TMUA-2021-paper-2.pdf                $D/TMUA-2021-paper-2.pdf
get 2024/05/07141118/TMUA-2021-paper-2-worked-answers.pdf $D/TMUA-2021-paper-2-worked-answers.pdf
get 2024/05/07141122/TMUA-2021-answer-keys.pdf            $D/TMUA-2021-answer-keys.pdf

D=_resources/past_papers/2022
get 2024/05/07141241/TMUA-2022-paper-1.pdf                $D/TMUA-2022-paper-1.pdf
get 2024/06/04105226/TMUA-2022-paper-1-worked-answers.pdf $D/TMUA-2022-paper-1-worked-answers.pdf
get 2024/05/07141239/TMUA-2022-paper-2.pdf                $D/TMUA-2022-paper-2.pdf
get 2024/06/04105227/TMUA-2022-paper-2-worked-answers.pdf $D/TMUA-2022-paper-2-worked-answers.pdf
get 2024/05/07141242/TMUA-2022-answer-keys.pdf            $D/TMUA-2022-answer-keys.pdf

D=_resources/past_papers/2023
get 2024/04/30144109/TMUA-2023-paper-1.pdf                $D/TMUA-2023-paper-1.pdf
get 2024/06/04105227/TMUA-2023-paper-1-worked-answers.pdf $D/TMUA-2023-paper-1-worked-answers.pdf
get 2024/04/30144111/TMUA-2023-paper-2.pdf                $D/TMUA-2023-paper-2.pdf
get 2024/06/04105226/TMUA-2023-paper-2-worked-answers.pdf $D/TMUA-2023-paper-2-worked-answers.pdf
get 2024/04/30144123/TMUA-2023-answer-keys.pdf            $D/TMUA-2023-answer-keys.pdf

echo
echo "Done — $(find _resources -name '*.pdf' | wc -l | tr -d ' ') PDFs."

# ---------------------------------------------------------------------------
# Supplementary practice ladder (academy-recommended). All free & official.
# Not redistributed — downloaded locally only. Sources documented in curriculum.qmd.
echo "Supplementary practice ladder →  _resources/supplementary/"

M=_resources/supplementary/MAT   # Oxford Mathematics Admissions Test + solutions
mkdir -p "$M"
curl -sSL --retry 3 -o "$M/MAT-2022.pdf"           https://www.maths.ox.ac.uk/system/files/attachments/test22.pdf
curl -sSL --retry 3 -o "$M/MAT-2023.pdf"           https://www.maths.ox.ac.uk/system/files/attachments/test23.pdf
curl -sSL --retry 3 -o "$M/MAT-2024.pdf"           https://www.maths.ox.ac.uk/system/files/attachments/test24.pdf
curl -sSL --retry 3 -o "$M/MAT-2022-solutions.pdf" https://www.maths.ox.ac.uk/system/files/attachments/websolutions22_2.pdf
curl -sSL --retry 3 -o "$M/MAT-2023-solutions.pdf" https://www.maths.ox.ac.uk/system/files/attachments/websolutions23_1.pdf
curl -sSL --retry 3 -o "$M/MAT-2024-solutions.pdf" https://www.maths.ox.ac.uk/system/files/attachments/websolutions24.pdf

P=_resources/supplementary/PAT   # Oxford Physics Aptitude Test (use the maths questions only)
mkdir -p "$P"
for y in 2021 2022 2023; do
  curl -sSL --retry 3 -o "$P/PAT-$y.pdf" "https://www.physics.ox.ac.uk/system/files/file_attachments/PAT-$y.pdf"
done

T=_resources/supplementary/tyler_tmua_mocks   # Tyler Tutoring — full TMUA mocks A-D + worked solutions
mkdir -p "$T"
tyler() { curl -sSL --retry 3 -o "$T/$2" "https://www.tylertutoring.com/_files/ugd/e40201_$1.pdf"; }
tyler 0b76af75de7a458c926de029f7bf4bfe Tyler_TMUA_Set_A_questions.pdf
tyler a7634ef090d846b3b542d8ed2583db4a Tyler_TMUA_Set_A_solutions.pdf
tyler 57e6ecba9b284ac89cb7e1088c1a7d65 Tyler_TMUA_Set_B_questions.pdf
tyler b0ff58a3c827471ea30439a179ada359 Tyler_TMUA_Set_B_solutions.pdf
tyler 034be11b89f74508acc23839ca8b3028 Tyler_TMUA_Set_C_questions.pdf
tyler a13f9db224de48d9a7e127f29383f3f6 Tyler_TMUA_Set_C_solutions.pdf
tyler feacec67387945f880826f15128890b3 Tyler_TMUA_Set_D_questions.pdf
tyler 117c467bb02d46de9e1179bceed73b30 Tyler_TMUA_Set_D_solutions.pdf

echo "  (ECAA, ENGAA, STEP, AMC 12 are linked from curriculum.qmd — fetch by hand from their sites.)"
