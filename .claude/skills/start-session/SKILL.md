---
name: start-session
description: Session start check. Reads setup status and open questions, scans job folders for interviews within 3 days, overdue follow-ups, stale applications, and offers awaiting response. Use at the start of a session, or when the user asks "what's on my plate" or "where do things stand."
---

# Start Session

Follows the session start list in `CLAUDE.md`.

1. If `profile/` does not exist, run `setup`. Read `profile/setup-status.md` and `profile/overrides.md` (if present). If setup is not complete, switch to the `setup` skill (unless the user has an urgent task; see that skill).
2. Read `profile/open-questions.md`. Note items that block active applications.
3. If `inbox/` holds unprocessed files, offer to run `process-inbox`.
4. Scan `jobs/*/notes.md` and `jobs/*/interview-prep.md` (skip `_template`). Flag, in this order: interviews within 3 days (and whether prep and a study guide exist), overdue follow-ups, offers awaiting response, applications with no update in 14+ days, open questions tied to an active job.
5. Report as a short table (job, status, next action, date) and a one-line recommendation for what to do first. Use plain language.
6. Offer the single most useful next step. Do not list every feature.

This skill only reports. It sends nothing and changes no files.
