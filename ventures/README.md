# Ventures

Optional parallel domains the user wants this assistant to support (a side business, consulting practice, personal brand site, a client-facing product, and so on).

To add one:
1. Create `ventures/<name>/` with a `brief.md` (what it is, who it serves, constraints) and a `STATUS.md` (state, what is blocking, next step).
2. Add it to the workspace map in `CLAUDE.md`.
3. Add a CHANGELOG entry.

If a venture needs inputs the user has not provided yet, mark it parked in `STATUS.md` and do not build or generate deliverables until the inputs arrive.
