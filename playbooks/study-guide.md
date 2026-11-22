# Playbook: Study Guides and Presentation Prep

Builds an interactive study guide: one HTML file the user opens by double-click, with flashcards, a timed practice mode, a time plan, and a checklist. It works offline, needs no install, and saves progress in the browser.

The user may not be technical. Never ask them to run commands, edit JSON, or know file names. Say what you will make and what you need from them, in plain words.

A finished example lives at `examples/sample-study-guide-software-engineer.html` (engineering focus, fictional company). Open it to see the target quality and shape, and show it to a user who asks what a study guide looks like. Never copy its content into a real guide.

## When to offer

Offer once, in plain words, when any of these appear (see also "Offers" in `CLAUDE.md`):

- The user has a presentation, case study, panel, technical round, or any event where they must perform or know material cold. Length is irrelevant; a 90-minute case presentation is the classic fit.
- An interview-prep file exists and the stage is panel, technical, case, presentation, or executive.
- The user says "I need to learn," "I'm nervous about," "I have to present," or "how do I prepare for" about a specific event.
- The user must master a new domain fast (a new industry, a standard, a tool) before a conversation.

Wording example: "I can build you an interactive study guide for this: flashcards, a timed practice run, and a checklist, all in one file you open in your browser. Want me to?" If they decline, do not ask again for this event unless the situation changes.

## Step 1: Work out what the event is, from what you already have

Before asking anything, read what exists: the job folder (`posting.md`, `notes.md`, `interview-prep.md`), `profile/career-history.md`, `profile/positioning.md`, and anything the user pasted this session. Fill the event card below from those. Then ask only for what is missing.

Event card (write it at the top of the job's `interview-prep.md` or `notes.md`):

| Field | Value |
|---|---|
| Event type | case presentation, panel, technical, behavioral, product or strategy case, demo, domain test |
| Date and time left | |
| Total length and split | for example 90 minutes: 45 present, 45 questions |
| Who is in the room (names, roles) | |
| What they will judge | rubric or stated focus |
| What the user must deliver | slides, a document, a live walk-through, a whiteboard |
| Materials provided to the user | |
| Materials still missing | |

## Step 2: Ascertain the materials

Use this table. Check what you already have, then ask for the rest in one short message, at most 5 items, ordered by how much each improves the guide. Tell the user they can paste text, drop files into `inbox/`, or say "I don't have that."

| Event type | Materials that make the guide good | Where to find them if the user lacks them |
|---|---|---|
| **Case study or presentation** | The prompt or case brief; any data, appendix, or attachments; the evaluation criteria or rubric; the deliverable format and time split; the audience; the user's draft slides or notes; feedback from the recruiter | Ask the recruiter or coordinator for the rubric and format (offer a short email draft). Public company materials: annual report, earnings call, product pages, press |
| **Panel or technical round** | The recruiter's stated focus areas; panelist names and titles; the posting; any take-home or prior submission; what the user has actually built or shipped in this area | Public professional bios of the panelists; the company's engineering blog and docs; the relevant standards or documentation |
| **Behavioral or leadership round** | The posting's top requirements; the user's story bank (`reference/interview-answers.md`); the company's stated values | Company careers and values pages |
| **Product or strategy case (live)** | The role family, the company's products and market, the user's past launches or decisions | Product pages, recent news, competitor comparison |
| **Demo or sales presentation** | The audience's problem, the product or offering, any discovery notes, time limit | Customer or prospect public materials |
| **Learning a new domain fast** | The exact topics the interviewer will probe, the user's current level, the deadline | Authoritative primary sources for the topic |

Rules for gaps:
- If something is missing and cannot be found, say so and proceed with what exists. Mark assumptions inside the guide as "assumed".
- Never ask for something a quick search or a file in the workspace answers.
- Never ask the user to paste confidential employer or client material. Suggest anonymizing it or working from a public equivalent.
- For a take-home case, the prompt itself is the single most valuable item. If it is missing, ask for it first.

## Step 3: Research

- Web search for current, citable facts on the company, the domain, and the standards or frameworks in play. Prefer primary sources. Label anything unconfirmed `(verify)` and anything stated by only one source `(single source)`.
- Record durable findings in the job's `notes.md` with dates and sources. Record role-family or sector norms in the industry log of `profile/positioning.md`.
- Panelist research is public professional background only. No personal details.

## Step 4: Choose the tabs

A tab appears only when its section has content. Pick by event type:

| Event type | Tabs to build |
|---|---|
| Case or long presentation (30+ min) | Overview, Plan and timing, Concepts (frameworks, domain primer), Flashcards (facts, numbers, definitions), Practice (hard questions from the panel), Checklist |
| Panel or technical | Overview (what each panelist will test), Concepts, Flashcards, Practice, Checklist |
| Behavioral | Overview, Practice (one story per question, tracking which story goes to whom), Checklist |
| Product or strategy case | Overview, Concepts (frameworks), Plan and timing, Practice, Checklist |
| Demo | Overview, Plan and timing, Practice, Checklist |
| New domain | Concepts, Flashcards, Practice, Checklist |

## Step 5: Write the content

Ground everything. The user's own experience comes only from `profile/career-history.md` and `reference/interview-answers.md`. Domain facts come from the research, with sources. Never invent metrics, results, or experience. Where the user has a gap, write the honest framing: what is true, what is adjacent, how they are closing it.

Section guidance:

- **Overview:** one-paragraph summary of what the event is and what is being judged; 3 key messages; who they will face and what each person cares about; the key numbers the user must know cold, with the source of each.
- **Concepts:** plain-language explanations. Define every term on first use. One idea per card. Lead with the point.
- **Plan and timing:** blocks that sum to the total length. For a presentation, allocate time by what the rubric rewards, front-load the recommendation, and leave real room for questions. Notes per block say what must land.
- **Flashcards:** 20 to 40 cards. Question on front, a 1 to 3 sentence answer on the back, a topic tag. Include "trap" cards: common wrong claims the user must avoid. Include number cards for figures they must quote.
- **Practice:** 6 to 12 questions in the voice of the actual panelists. Each has: who asks it, what a strong answer includes (`listen`), a short outline (`outline`), and mistakes to avoid (`watch`). Include at least three hard or hostile questions and two about the user's weak spots.
- **Checklist:** a prioritized fix list (specific, each with a detail line), 8 questions to ask them (at least two tied to research), and a before-the-day list (logistics, rehearsal, materials). Use the logistics checklist in `playbooks/interview-prep.md`.

Voice: plain, direct, no filler. Follow `profile/voice-and-style.md` for anything written in the user's voice (answer outlines, pitches). Every guide is for the user's eyes; it does not need to sound like them elsewhere.

## Step 6: Build the file

1. Copy `reference/study-guide-template.html` to `jobs/<company>-<role>/study-guide.html`. If the event is not tied to a job, create a folder in `jobs/` named for the event.
2. Replace only the JSON inside `<script id="guide-data">`. Do not change the CSS or the renderer.
3. Set a stable `id` (for example `acme-case-presentation`) so saved progress survives edits. Keep card and question order stable when updating; progress is stored by position.
4. Plain text only in every string. Escape `<` as `<`. Do not use em dashes unless the user's voice file allows them.
5. Validate the JSON with `python3 -c "import json,re,sys; t=open(sys.argv[1]).read(); json.loads(re.search(r'<script type=\"application/json\" id=\"guide-data\">(.*?)</script>', t, re.S).group(1)); print('ok')" <file>`. Fix any error before delivering.
6. If a browser tool is available, open the file and click through each tab once to confirm it renders. Report anything you could not check.

## Step 7: Hand it over

Tell the user, in a few lines:
- Where the file is and how to open it (double-click; it opens in the browser; works offline).
- What is in each tab, in one line each.
- What is assumed or unverified, and what material would improve it.
- A suggested first move: "Start with the Plan tab, then run the timer once."

Then offer a spoken mock in chat: you play the panel, one question at a time, with feedback after each answer (see "Mock interviews" in `playbooks/interview-prep.md`).

## Step 8: Keep it alive

- When the user shares the prompt, a rubric, panelist names, or practice results, update the guide and tell them what changed.
- After the event, run the debrief (`playbooks/interview-prep.md`). Questions the panel actually asked become practice entries for the next round.
- Route every new fact about the user through `playbooks/self-healing.md`.

## Self-healing hooks

- A card type, question style, or time split that worked goes into this playbook under a dated note.
- A new event type the user brings gets a row in the materials table and the tab table.
