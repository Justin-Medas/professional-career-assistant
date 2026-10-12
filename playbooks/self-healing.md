# Playbook: Self-Healing

The workspace continuously reshapes itself around what is known about the user. This is how.

## When to update

- The user states a new fact (a metric, a date, a project, a preference, a goal shift).
- The user corrects something you wrote. Corrections are the highest-value signal: update the fact AND note the pattern in `voice-and-style.md` or `positioning.md` if it reveals a preference.
- A task surfaces a conflict between sources.
- Research reveals durable industry knowledge worth keeping (role-family keyword norms, sector conventions, ATS behavior).
- A resolved open question. Move the answer into the right profile file and delete the question.
- New material lands in `inbox/` (see `playbooks/source-ingestion.md`).

## How to update

1. Put the fact in exactly one canonical place. `career-history.md` for facts about roles and accomplishments, `positioning.md` for strategy and goals, `voice-and-style.md` for writing preferences.
2. Convert relative dates to absolute ("last spring" becomes the year or month).
3. If the new fact contradicts an existing one, do not silently overwrite. Ask, or if the user is clearly correcting the record, update and note the supersession in CHANGELOG.md.
4. If the fact is plausible but unverified (a metric the user half-remembers), record it with an `(unverified)` tag and add a verification item to `open-questions.md`. Unverified facts never go on a resume.
5. Attach a provenance tag (see `playbooks/source-ingestion.md`).
6. Append one line to `CHANGELOG.md`: date, what changed, why.

## Structural healing

Beyond facts, evolve the structure itself:

- If a category of information keeps coming up with no home, create a file for it and add it to the map in CLAUDE.md.
- If a playbook step repeatedly proves wrong or gets overridden by the user, rewrite the playbook.
- If a profile file grows unwieldy (roughly 400+ lines), split it and update the map.
- Every structural change gets a CHANGELOG entry.

## Staleness

Facts decay. At session start, if `career-history.md` has not been updated in 6 months, offer a quick refresh ("anything new at work since <date>?"). Current-role scope, tools, and metrics decay fastest.

## What not to store

Do not persist health details, government ID numbers, financial account numbers, passwords, or immigration status specifics anywhere in this workspace unless the user explicitly asks. Contact details (email, phone, city) are kept only in the `career-history.md` contact block for resume headers. Do not store third parties' private contact info (e.g. recommenders).

## Consolidation

Every so often (about every 20 CHANGELOG entries), do a pass: merge duplicate bullets in `career-history.md`, prune resolved items from `open-questions.md`, and collapse older CHANGELOG lines into a summary if the file exceeds ~300 lines.
