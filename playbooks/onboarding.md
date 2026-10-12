# Playbook: Onboarding (First-Run Setup)

Goal: seed `profile/` with as much verified information as possible before the first real task, while asking the user for as little as possible. Sources first, questions second.

Track progress in `profile/setup-status.md`: set `state: in-progress`, tick each step as it finishes, and set `state: complete` at the end. Setup can span sessions; always resume at the first unticked step.

## Principles

- **Harvest before asking.** Every question you can answer from a file, export, or public page is a wasted question.
- **Ask in small batches.** Never present more than 5 questions at once. Prefer confirm-or-correct questions ("Your 2021 resume says X, still accurate?") over open ones.
- **Show progress.** After each step, say what was learned in two or three lines and what comes next.
- **Everything is skippable.** If the user declines a step, mark it `skipped` in setup-status and move on. Offer to revisit later.
- **Provenance always.** Each fact entered into `career-history.md` carries a source tag (see `playbooks/source-ingestion.md`).
- **Do not overwhelm.** Open with the plan (below), not a wall of questions.

## Step 0: Welcome and plan

Tell the user, in about six lines:
- What this workspace does (resumes, positioning, interview prep, job tracking).
- That setup takes roughly 30 to 45 minutes, can be paused, and works best when they drop files into `inbox/` first.
- That everything stays in local markdown files and nothing is sent anywhere without their say-so.
- The nine steps below, one line each.

Then ask: "Have you already put files in `inbox/`? If not, I can wait while you add them, or we can start with questions." Point to `inbox/README.md`.

## Step 1: Basics (ask, 5 questions max)

Collect and write to the Contact block of `profile/career-history.md`:
1. Full name as it should appear on a resume.
2. Email, phone (optional), city/region (or "prefer not to list").
3. Public links: LinkedIn URL, personal site, GitHub or portfolio, anything else.
4. Current status: employed / between roles / student / career changer.
5. Current or most recent job title and employer.

Do not ask for street address; a city and region are enough unless the user wants more.

## Step 2: Harvest local files

Scan `inbox/` (and any paths the user names). Follow `playbooks/source-ingestion.md` for each file type. Process in this order: resumes, LinkedIn data, reviews and brag docs, project material, writing samples, everything else.

If `inbox/` is empty, say so and offer three routes: the user adds files now, the user pastes their latest resume into chat, or skip to Step 4 and build from interview alone (slower; say so).

Report: files processed, roles found, date range covered, and any conflicts between versions.

## Step 3: LinkedIn

Skip if the LinkedIn export, PDF, or paste was already ingested in Step 2 and looks complete (roles, education, skills, recommendations).

Otherwise offer, in this order:
1. **Data export** or **Save to PDF** instructions from `inbox/README.md`. Wait for the files.
2. **Paste** sections into chat.
3. **Live read** via Claude in Chrome, only if the tools are available and the user is signed in, and only for the user's own profile. Ask permission first, read the profile pages (About, Experience, Education, Skills, Recommendations), and tell the user what you read. Never browse other people's profiles to seed this one.
4. **Public URL fetch** as a last resort. Public views are often truncated; say so.

Recommendations received are high value: they hold third-party phrasing of strengths. Capture the author's role (not private contact info) and the specific claims.

Compare LinkedIn against resumes. Mismatches in titles, dates, or employers go on the conflict list for Step 6.

## Step 4: Online presence and connectors

Ask once: "Anywhere else your work is visible or stored?" Then, per source the user confirms:
- **Public pages** (personal site, portfolio, GitHub profile and pinned repos, blog, talks, publications, patents, press): fetch with web tools. Record projects, tech, and dates.
- **Google Drive** (if the connector is available): offer to search for files titled like "resume", "CV", "cover letter", "performance review", "brag". List the matches and let the user pick which to read. Do not read anything unlisted.
- **Gmail** (if available): offer a narrow search such as past application confirmations or recruiter threads to reconstruct which roles and companies the user pursued. Read only what the user okays. This step is optional and never default.
- **Other connectors** (Notion, Slack, Jira, etc.): only if the user volunteers them as a source of accomplishments.

Always state which account is being read and why, and summarize findings before saving anything.

## Step 5: Build the draft record

Merge everything into `profile/career-history.md` using its template:
- One section per employer and role, newest first.
- Latest title and dates win ties between sources, but record the discrepancy under conflicts.
- Metrics appear only if a source states them; carry the source tag.
- Anything inferred is marked `(inference)`. Anything single-sourced and old (2+ years) is marked `(unverified)`.
- Skills are grouped (languages, tools, domains) with a "last used" hint where known.

Also write `reference/resumes/summary.md`: a short distillation per resume version (target role, date, emphasis, notable phrasing).

## Step 6: Confirm pass (read-back)

Read the draft back one role at a time, in chunks the user can answer quickly:
- Title, employer, dates, location.
- Scope (team size, budget, users, revenue, geography) if present.
- Top accomplishments as written.

For each role ask only: "Right, wrong, or missing something?" Apply corrections immediately. Resolve the conflict list from Steps 2 and 3 here. Upgrade confirmed facts from `(unverified)` to verified by removing the tag.

Ask about gaps in the timeline longer than 3 months (career break, caregiving, freelance, school, layoff). Record what the user is comfortable stating; ask how they want it framed. Never assume.

## Step 7: Targets and positioning interview

Write answers to `profile/positioning.md`. Ask in two rounds of at most 5.

Round A, direction:
1. What role titles or families are you aiming for next (up to three, ranked)?
2. Which industries or sectors? Any you want to avoid?
3. Target seniority and scope (IC, manager, director, executive; team or budget size)?
4. Are you changing function or industry? If so, what from your past is the bridge?
5. Timeline and urgency: actively applying, passively looking, or planning ahead?

Round B, constraints and strengths:
1. Location: remote only, hybrid, onsite radius, relocation, work authorization considerations.
2. Compensation: floor, target, and what counts (base, bonus, equity).
3. Employers or situations that are off-limits.
4. The two or three things you want to be known for. What do colleagues come to you for?
5. A project or result you are proudest of, and why it mattered.

Then run quick web research for the target role families and sectors (titles, keywords, what screeners expect now, comp norms). Log findings in the industry knowledge log with the date. Show the user the three most useful findings.

## Step 8: Voice capture

Write `profile/voice-and-style.md`.
1. Analyze writing samples already ingested (cover letters, emails, posts). Note sentence length, formality, person (I vs. implied subject), vocabulary, and tics. Present what you observed in three lines and ask whether it should be the baseline.
2. Ask for style rules, offering the defaults in the template to accept or change:
   - Em dashes allowed or not.
   - Resume bullets: first person implied, tense (past for finished work, present for current role), terse or fuller.
   - Words or phrases they hate or that are overused in their field.
   - Spelling convention (US/UK) and date format.
3. If no samples exist, ask for one short paragraph on a recent accomplishment, written however they would naturally say it. Use it as the baseline.

## Step 9: Gap interview and story bank

1. Run `playbooks/question-bank.md` against the draft record. Choose the 5 to 8 highest-impact questions: roles with no metrics, recent roles with thin detail, projects named without outcomes, skills listed without evidence.
2. Ask the first batch of up to 5 now. Put the rest in `profile/open-questions.md`, ordered by impact, each with why it matters.
3. Ask the interview-readiness questions (at most 5), and write answers to `positioning.md`: Are any interviews or recruiter conversations in progress right now (company, stage, date)? If so, create the job folder and run `playbooks/interview-prep.md` right after setup. Which interview formats worry you most (phone screens, behavioral, technical, case, panel)? What is your honest answer to "why are you looking" and "tell me about yourself" today? Do you have 2 to 3 references willing to speak for you? Is there a compensation answer you are comfortable giving a recruiter?
4. Seed `reference/interview-answers.md` by asking for (or drafting from the record, then confirming):
   - One decision or technical/strategic story with situation, action, result.
   - One conflict or difficult-person story.
   - One failure and what changed afterward.
   - One example of leading or influencing without authority.
   Skip any that do not fit the user's role family.

## Step 10: Wrap-up

1. Compute coverage in `profile/setup-status.md` (see its checklist): roles with confirmed dates, roles with at least one metric, positioning filled, voice filled, open questions logged.
2. Tell the user in under ten lines: what the workspace now knows, the three weakest areas, and what to do next (e.g. "paste a job posting to build your first tailored resume").
3. Set `state: complete`, add the date, and write a CHANGELOG entry summarizing sources used and counts.
4. Offer to produce a first generic-but-honest master resume draft in markdown from the record, flagged as a draft for review, as a quick win. Tailoring still happens per job.
5. Offer a draft "tell me about yourself" pitch (60 to 90 seconds) from the confirmed record, as the first interview-prep asset. Save it to `reference/interview-answers.md`.

## If the user wants to stop mid-way

Save state. Write what is done and what is pending in `setup-status.md`. At the next session start, offer to resume with a one-line recap.

## Re-onboarding

Re-run Steps 2, 3, and 6 when the user adds a new resume, changes jobs, or when `career-history.md` has not been touched in 6 months and is about to be relied on. Treat it as a refresh, not a restart.
