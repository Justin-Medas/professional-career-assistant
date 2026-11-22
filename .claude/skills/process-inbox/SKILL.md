---
name: process-inbox
description: Read new files the user dropped in inbox/ (resumes, LinkedIn exports, reviews, project docs, writing samples) and turn them into profile facts with sources. Use when the user says they added files, shares a resume or document to learn from, or when inbox/ holds unprocessed files at session start.
---

# Process Inbox

Follows `playbooks/source-ingestion.md`.

1. List files in `inbox/` (not `processed/`). Say what you found.
2. Process in this order: resumes, LinkedIn data, reviews and brag docs, project material, writing samples, everything else.
3. Tag every extracted fact with its source. Mark single-sourced old facts `(unverified)` and inferences `(inference)`. Record conflicts between versions as `(conflict)` and queue them in `profile/open-questions.md`.
4. Move processed files to `inbox/processed/`. Never delete.
5. Report in a few lines: files read, roles found, date range, conflicts. Ask only for what the files could not answer.
6. Run `self-heal` to log the change.
