# Professional Assistant (Agnostic)

A personal career workspace for Claude Code. It learns who you are from your resumes, LinkedIn data, and a guided interview, then uses that to build tailored resumes, prepare for interviews, and sharpen your positioning. Everything is plain markdown on your machine.

## Quickstart

1. Clone or download this repo into a **private** location on your machine (not a public fork). One copy per person.
2. **Before your first session, drop material into `inbox/`.** The more you add, the less you will be asked. See [inbox/README.md](inbox/README.md) for the checklist, including how to export your LinkedIn data.
3. Open the folder in Claude Code and say "start setup" (or just say hello; the assistant detects a fresh workspace and begins).
4. Setup takes roughly 30 to 45 minutes and can be paused. Progress is tracked in `profile/setup-status.md`.
5. When setup finishes, paste a job posting or link and ask for a tailored resume.

## What you end up with

- `profile/career-history.md`: your canonical record, with every claim traceable to a source or to something you said.
- `profile/positioning.md`: where you are heading and how to frame it.
- `profile/voice-and-style.md`: rules so drafts sound like you.
- `jobs/<company>-<role>/`: one folder per application with posting, research, tailored resume, and notes.

## How it stays accurate

The assistant never invents facts. Anything it is unsure about becomes a question in `profile/open-questions.md`. Corrections you make are written back into the profile so the next draft starts better. Every change is logged in `CHANGELOG.md`.

## Optional connectors

If your Claude setup has Google Drive, Gmail, or a browser extension connected, the assistant can offer to find old resumes or read your own LinkedIn profile. It asks before touching any of them.

## Adding other domains

Side business, consulting practice, or anything else you want an assistant for: tell it, and it creates a folder under `ventures/`.

## Keep your copy private

Once you run setup, this workspace holds your real career history, contact details, and job applications. Do not push a populated copy to a public repository. The `.gitignore` excludes `inbox/` and `reference/resumes/originals/`, but `profile/`, `jobs/`, and `reference/` will contain personal data after setup. If you want version control for your own copy, use a private repository.

## License

MIT. See [LICENSE](LICENSE).
