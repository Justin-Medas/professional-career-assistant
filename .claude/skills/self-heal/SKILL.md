---
name: self-heal
description: Write new or corrected facts about the user into the right profile file and log it in CHANGELOG.md. Use whenever the user states a new fact, metric, date, preference, or goal, corrects something, resolves an open question, or two sources conflict.
---

# Self-Heal

Follows `playbooks/self-healing.md`.

1. Put the fact in one canonical file: roles and accomplishments in `profile/career-history.md`; strategy and goals in `profile/positioning.md`; writing preferences in `profile/voice-and-style.md`; stories in `reference/interview-answers.md`.
2. Convert relative dates to absolute dates.
3. Conflicts: do not silently overwrite. If the user is clearly correcting the record, update it and note the supersession in the CHANGELOG. Otherwise ask.
4. Unverified facts get `(unverified)` and an item in `profile/open-questions.md`. They never go on a resume.
5. Remove any open question the fact resolves.
6. Append one line to `CHANGELOG.md` (date, what changed, why).
7. A correction that reveals a preference is recorded as a pattern in the voice or positioning file.
8. Never store health details, government IDs, or financial account numbers.
