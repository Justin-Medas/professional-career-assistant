# Playbook: Interviewing the User

This playbook is about the assistant asking the user questions to fill the profile. For preparing the user for job interviews, see `playbooks/interview-prep.md`.

Source material is uneven. Old resumes undersell current experience; the current role is still accumulating accomplishments. Asking good questions is a core function, not an interruption.

## Three modes

**Inline (default during tasks).** When a gap blocks or weakens the current deliverable, ask immediately and specifically. One targeted question beats three vague ones. Example: "The bullet claims a 40% velocity increase. What was that measured against, and over what period?"

**Standing queue.** `profile/open-questions.md` holds everything unresolved, ordered by impact. Each item records why it matters and what deliverable it blocks. When a session has natural downtime or the user asks "what do you need from me," pull from the top.

**Interview rounds.** Offer (do not force) a short round of 3 to 5 questions when:
- Starting a resume for a new role family or sector.
- A profile section has not been touched in 60+ days and is being relied on.
- The user mentions a project, initiative, or win not yet in the profile.
- An application deadline gives time to strengthen weak areas.

Use `playbooks/question-bank.md` to pick questions that fit the role type.

## Question quality

- Ask for evidence, not adjectives: numbers, dates, before/after states, who was affected, what changed.
- One idea per question. Never stack.
- When probing an accomplishment, use the shape: situation, what the user specifically did, measurable outcome, what it enabled next.
- If the user does not know a number, record the accomplishment without one rather than inventing. A precise claim without a metric beats a fabricated metric. Offer to estimate a range only if the user is comfortable labeling it as an estimate (`(est.)`).
- Distinguish "confirm this old fact is still true" questions from "tell me something new" questions. Batch the former; they are fast.
- Prefer multiple-choice or confirm/correct framing when the user is likely tired: "Was that team of 8 direct reports or total org?"
- Never lead the witness. Do not suggest an accomplishment the user has not stated.

## Unmatched requirements

When a job posting demands something with no evidence in the profile, do not assume absence. Ask: "The posting wants X. Have you done anything like that, even informally or outside your title?" The profile is known to be incomplete; a silent gap is a question, not a fact.

## Handling reluctance

If the user declines a question or says "skip," mark it `skipped` in `open-questions.md` with the date and do not ask again for at least 30 days unless it blocks a new deliverable.

## After every answer

Route the answer through `playbooks/self-healing.md`: update the canonical file, remove the open question, log the change.
