---
name: new-application
description: Start a new job application. Saves the posting, researches the company and role family, builds the requirement map and fit assessment, and sends one batched probe round before drafting. Use when the user shares a job link or posting, or says they are applying somewhere.
---

# New Application

Runs steps 1 to 3 of `playbooks/resume-tailoring.md`. Read that playbook, `profile/career-history.md`, and `profile/positioning.md` first.

1. Create `jobs/<company>-<role>/` by copying `jobs/_template/` (lowercase, hyphenated).
2. Save the posting to `posting.md` with URL and today's date. Fetch it if only a link was given. Capture any posted comp range.
3. Research. Delegate to the `job-researcher` agent (company, stack, news, comp, role-family conventions). Save findings to `notes.md`. Record durable findings in the industry log in `profile/positioning.md` or in `reference/ats-conventions.md`.
4. Requirement map in `notes.md`: each top requirement matched to evidence, marked strong, partial, or gap.
5. Fit assessment: strongest angle, biggest risk, honest gaps. Never stretch a gap.
6. Probe round: for every major requirement with no evidence, ask whether unrecorded experience exists. One message, at most 5 questions, evidence-shaped (`playbooks/interviewing.md`).
7. Write answers back to the profile the same session (`self-heal`).
8. Add an application log row to `notes.md` (date, status `researching`).
9. Offer the next step: a tailored resume (`tailor-resume`).
