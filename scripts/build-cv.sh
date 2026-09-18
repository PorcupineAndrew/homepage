#!/usr/bin/env bash
set -euo pipefail

if (( $# > 0 )); then
  printf '%s\n' 'Usage: bash scripts/build-cv.sh' \
    'Compile CV/cv.tex with pdfLaTeX and replace assets/files/curriculum_vitae.pdf.'
  case "$1" in -h|--help) exit 0 ;; *) exit 2 ;; esac
fi

for tool in latexmk pdflatex; do
  if ! command -v "$tool" >/dev/null 2>&1; then
    printf 'Missing %s. Install TeX Live and put its binaries on PATH.\n' "$tool" >&2
    exit 1
  fi
done

repo_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$repo_dir/CV"
mkdir -p .build

# Compile here so the bundled, customized ModernCV files take precedence.
# latexmk repeats pdfLaTeX as needed to resolve references and page totals.
latexmk -norc -pdf -no-shell-escape -interaction=nonstopmode \
  -halt-on-error -file-line-error -outdir=.build \
  -jobname=curriculum_vitae cv.tex

test -s .build/curriculum_vitae.pdf

# Publish only a successful build, with an atomic rename on the same filesystem.
staged_pdf="$(mktemp "$repo_dir/assets/files/.cv.XXXXXX")"
trap 'rm -f -- "$staged_pdf"' EXIT
trap 'exit 130' INT
trap 'exit 143' TERM
cp .build/curriculum_vitae.pdf "$staged_pdf"
chmod 644 "$staged_pdf"
mv -f -- "$staged_pdf" "$repo_dir/assets/files/curriculum_vitae.pdf"
printf 'Updated %s\n' "$repo_dir/assets/files/curriculum_vitae.pdf"
