# Professional Assistant

A personal career assistant that runs in [Claude Code](https://claude.com/claude-code). It learns who you are from your resumes, LinkedIn data, and a guided conversation, then helps you with the work around a job search: tailored resumes, interview preparation, study guides for high-stakes presentations, and follow-ups. Everything is plain files on your own computer.

You do not need to be technical, and you do not need to learn any commands. Talk to it the way you would talk to a capable colleague. It notices what you are facing and offers the right help.

## What it is good for

- **Getting a resume right for each job.** Paste a job posting. It researches the company, checks how well you match, asks about experience your records are missing, and drafts a resume tailored to that role. It never invents numbers or accomplishments.
- **Preparing for interviews.** A recruiter call, a hiring manager chat, a technical round, a panel. It builds your pitch, maps your stories to what they will ask, writes questions for you to ask, runs mock interviews, and drafts thank-you notes afterward.
- **Preparing for big presentations and case studies.** Tell it you have a 90-minute case study presentation, a panel, or a technical round. It offers to build an **interactive study guide**: one file you open in your browser with flashcards, a timed practice run, a plan for how to spend your time, and a checklist. See below.
- **Keeping your story straight.** Your career history lives in one place. When you correct something or mention a new win, it updates the record, so every future draft starts better.
- **Tracking your search.** Each application gets its own folder. At the start of a session it tells you what is coming up, what is overdue, and what to do first.

## Quickstart

1. Put this folder somewhere **private** on your computer (not a public repository). One copy per person.
2. **Before your first session, drop material into `inbox/`.** The more you add, the fewer questions you will be asked. [inbox/README.md](inbox/README.md) lists what helps most, including how to export your LinkedIn data.
3. Open the folder in Claude Code and say hello, or say "start setup."
4. Setup takes about 30 to 45 minutes and can be paused. It tracks its own progress.
5. When it finishes, paste a job posting or a link and say what you want.

## You do not need to memorize anything

The assistant watches for cues and offers help in plain words. Examples of what you might say, and what happens:

| You say | It offers or does |
|---|---|
| "Here is a job I want" (with a link) | Researches the role, checks your fit, asks a few questions, offers a tailored resume |
| "A recruiter wants to talk Thursday" | Builds your prep: pitch, likely questions, what to ask, what to say about pay |
| "I have a 90-minute case presentation next week" | Asks what it needs, then offers an interactive study guide and a timed practice run |
| "I am nervous about the panel" | Offers a study guide and a mock interview, one question at a time |
| "I just got out of the interview" | Captures what happened while it is fresh and drafts thank-you notes |
| "What do you need from me?" | Asks a short round of the most useful questions |
| "Where do things stand?" | Summarizes what is due and recommends one next step |

If you want to see what is going on under the hood, the sections below explain it. You never have to.

## Study guides for presentations, case studies, and panels

Say what you are preparing for. The assistant works out what it needs, starting with what it already knows from your job folder and profile, and asks only for what is missing, usually some of these:

- The case brief or prompt, and any data that came with it
- The format: how long, how the time splits between presenting and questions, who will be there
- What they will judge you on (a rubric, or what the recruiter told you)
- Your draft slides or notes
- Anything the recruiter shared about the process

If you do not have something, say so. It builds with what exists and marks what it assumed. If a document is confidential, do not share it. Describe it, or give a public equivalent.

You get one file, `study-guide.html`, in that job's folder. Double-click to open it in your browser. It works offline and remembers your progress on that computer. Depending on the event it includes:

- **Overview:** what is being judged, who you will face, and the numbers to know cold
- **Plan and timing:** how to spend the time, with a run-through timer that shows which section you should be in
- **Concepts:** plain-language explanations of the topics and frameworks
- **Flashcards:** facts, definitions, numbers, and common mistakes, with "got it" and "again later"
- **Practice:** likely panel questions, a strong-answer checklist, an outline, a per-question timer, a self-rating, and a notes box
- **Checklist:** what to fix first, questions to ask them, and a before-the-day list

**Want to see one first?** [Try the live sample](https://justin-medas.github.io/professional-career-assistant/examples/sample-study-guide-frontend-platform.html) in your browser, or find the file at [examples/sample-study-guide-frontend-platform.html](examples/sample-study-guide-frontend-platform.html) and double-click it after downloading. It is a sample guide for a frontend platform engineering panel (fictional company, basic content) so you can try every tab before building your own. The same structure works for any field.

After you practice or share new material, ask it to update the guide.

## What you end up with

- `profile/career-history.md`: your record, with every claim traceable to a source or something you said.
- `profile/positioning.md`: where you are heading and how to frame it.
- `profile/voice-and-style.md`: rules so drafts sound like you.
- `jobs/<company>-<role>/`: one folder per application, with the posting, research, tailored resume, interview prep, and study guide.

## How it stays accurate

The assistant never invents facts. Anything it is unsure about becomes a question in `profile/open-questions.md`. Corrections you make are written back into your profile. Every change is logged in `CHANGELOG.md`. It never sends an email or message without your explicit yes.

## Optional connectors

If your Claude setup has Google Drive, Gmail, or a browser extension connected, the assistant can offer to find old resumes, save follow-up drafts, or read your own LinkedIn profile. It asks before touching any of them.

## For the curious: how it is built

- `CLAUDE.md` holds the assistant's operating instructions, including when to offer help.
- `playbooks/` hold the step-by-step methods (resumes, interviews, study guides, setup).
- `.claude/skills/` and `.claude/agents/` are shortcuts into those playbooks. The assistant picks them for you; you can also type a skill name such as `/study-guide`.
- `reference/study-guide-template.html` is the template every study guide is filled into.
- Change a process by editing the playbook. The skills point to it.

## Adding other domains

A side business, consulting practice, or anything else you want help with: tell it, and it creates a folder under `ventures/`.

## Keep your copy private

Once you run setup, this workspace holds your real career history, contact details, and job applications. Do not push a populated copy to a public repository. The `.gitignore` excludes `inbox/` and `reference/resumes/originals/`, but `profile/`, `jobs/`, and `reference/` will contain personal data after setup. If you want version control for your own copy, use a private repository.

## License

MIT. See [LICENSE](LICENSE).
