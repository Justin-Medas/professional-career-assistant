# Instructions for AI coding tools other than Claude Code

This workspace is written for Claude Code, and `CLAUDE.md` holds the full operating instructions. Tools that read `AGENTS.md` instead (for example ChatGPT's Codex) should work the same way:

1. **Read `CLAUDE.md` first and follow it as your instructions.** Treat "Claude" in any file as meaning you.
2. **Workflows live in `.claude/skills/<name>/SKILL.md`.** Each file says when to use it and what to do. When the user's request matches a skill's `description`, read that file and follow it. You do not need the skill to be installed or invoked by name. The table of proactive offers in `CLAUDE.md` (behavior 9) tells you when to offer which workflow.
3. **Helper agents live in `.claude/agents/<name>.md`.** If you cannot launch a separate agent, do that agent's job yourself by following its file, then continue.
4. **The user may not be technical.** Use plain language, never ask them to run commands or edit files by hand, and describe help by what it does for them.
5. **Privacy and honesty rules in `CLAUDE.md` apply in full.** Never invent facts about the user, never send anything on their behalf without an explicit yes, and keep their data in this folder.

Study guides are one HTML file built from `reference/study-guide-template.html` and work in any browser. Follow `playbooks/study-guide.md`.
