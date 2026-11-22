---
name: setup
description: Run first-time setup for a new workspace. Reads resumes and LinkedIn data the user dropped in inbox/, asks a few questions at a time, and builds the career profile. Use when the user says hello in a fresh workspace, says "start setup" or "get started", or when profile/setup-status.md shows not-started or in-progress.
---

# Setup

Follows `playbooks/onboarding.md`. Read it and `profile/setup-status.md`.

1. If `state` is `not-started` or `in-progress`, resume at the first unticked step. If the user arrives with an urgent task, do steps 1 to 3 only, do the task, then offer to finish.
2. Open with the plan in about six lines, in plain words: what this does, roughly 30 to 45 minutes, can pause, local files only, nothing sent anywhere without their say-so. Do not open with a wall of questions.
3. Ask whether they have put files in `inbox/`. If not, offer three routes: add files now, paste the latest resume into chat, or build from questions alone (slower).
4. Ask at most 5 questions at a time. Prefer confirm-or-correct questions.
5. After each step, say what you learned in two or three lines and what comes next. Update `profile/setup-status.md`.
6. Everything is skippable. Mark skipped steps and offer to revisit.
7. At the end, summarize what the workspace knows, the three weakest areas, and the next best action (usually: paste a job posting).
