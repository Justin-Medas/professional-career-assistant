---
name: tailor-resume
description: Draft and finalize a per-job resume. Selects the narrative angle and featured projects, drafts in markdown, fact checks it, reviews with the user, then produces docx or PDF only after approval. Use after new-application, or when the user asks to tailor, revise, or finalize a resume for a specific job.
---

# Tailor Resume

Runs steps 4 to 7 of `playbooks/resume-tailoring.md`. Read it, `profile/voice-and-style.md`, `profile/career-history.md`, `profile/positioning.md`, and the job's `notes.md` first. If `notes.md` has no requirement map, run `new-application` first.

1. Pick the angle from `positioning.md` and state it in one line.
2. Choose 2 to 4 featured projects matched to the posting. If the best match is thin, probe before drafting.
3. Draft to `jobs/<company>-<role>/resume-draft.md`, markdown only. Follow the voice file. Mirror the posting's terminology where honest. ATS-safe headings.
4. Delegate a fact check to the `resume-fact-checker` agent. Fix every flag or surface it as a judgment call.
5. Present the draft with a short list of judgment calls and any bullet resting on an unverified fact.
6. Only on approval, produce docx (and PDF if asked) in the job folder. Log the application in `notes.md` (status `applied`, date).
7. Offer once: "Want me to build the interview prep now so it is ready if they call?"
8. Run `self-heal` for anything new said during review.
