#!/bin/sh
# Blocks personal data from entering this public repository.
# Usage: check-personal-data.sh --staged   (pre-commit: files about to be committed)
#        check-personal-data.sh --tracked  (CI: every file in the tree)
# Exits 1 and lists offending paths if any personal path is present.

mode="${1:---staged}"

is_personal() {
  case "$1" in
    jobs/_template/*) return 1 ;;
    jobs/*) return 0 ;;
    profile/*) return 0 ;;
    ventures/README.md) return 1 ;;
    ventures/*) return 0 ;;
    inbox/README.md|inbox/processed/.gitkeep) return 1 ;;
    inbox/*) return 0 ;;
    reference/interview-answers.md) return 0 ;;
    reference/resumes/README.md|reference/resumes/originals/.gitkeep) return 1 ;;
    reference/resumes/*) return 0 ;;
    .claude/settings.local.json|CLAUDE.local.md) return 0 ;;
    *) return 1 ;;
  esac
}

if [ "$mode" = "--tracked" ]; then
  files=$(git ls-files)
else
  files=$(git diff --cached --name-only --diff-filter=ACMR)
fi

bad=""
for f in $files; do
  if is_personal "$f"; then bad="$bad
  $f"; fi
done

if [ -n "$bad" ]; then
  echo "BLOCKED: personal data paths must never be committed to this public repo:$bad"
  echo "Fix: git rm --cached <path>  (the .gitignore already excludes these). Do not use git add -f."
  exit 1
fi
exit 0
