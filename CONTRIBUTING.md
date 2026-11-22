# Contributing

This project started with a software and product career search, but the method (know the person, ground every claim, tailor per job, prepare for each stage) works in any field. If you work in customer experience, corporate events, project management, sales, nursing, teaching, or anything else, you know things this assistant does not: what hiring managers in your field look for, what the interview stages are, which keywords and credentials matter, which mistakes are common. Sharing that makes it better for the next person in your field.

You do not need to be a programmer. Everything here is plain text, mostly Markdown.

## Ways to contribute

- **Add a role-family guide.** What recruiters and hiring managers in your field expect: typical titles and levels, resume conventions, keywords, certifications, portfolio norms, pay-discussion norms, common interview formats and stages. This is the most useful contribution for a new field.
- **Add or improve a playbook.** A method for something job seekers in your field face, for example a case presentation, a portfolio review, a panel with stakeholders, or a skills assessment.
- **Add a skill.** A short workflow entry point that wraps a playbook, so the assistant knows when to offer it.
- **Add a sample.** A fictional, generic example in your field, like the software engineer study guide in `examples/`.
- **Improve the simple guide or README.** Plain-language fixes are welcome, especially from people who are not technical.
- **Report a problem.** Something confusing, wrong, or broken, including on ChatGPT, which is less tested. An issue with what you typed and what happened is enough.

## Where things go

| You are adding | Put it in |
|---|---|
| A guide for a field or role family | `playbooks/role-families/<field>.md` (create the folder if it is missing) |
| A method or process | `playbooks/<name>.md` |
| A workflow entry point | `.claude/skills/<name>/SKILL.md` |
| A helper agent (research, audits) | `.claude/agents/<name>.md` |
| A fictional example | `examples/` |
| A blank starter file | `templates/` |

Add a one-line entry for anything new to the workspace map in `CLAUDE.md`. If a role-family guide should be consulted automatically, add a line to the relevant playbook (for example `playbooks/resume-tailoring.md`) saying to read it when the target role is in that field.

A role-family guide should answer, in plain language:

1. Common titles and seniority levels, and what each means in practice.
2. What a strong resume shows in this field (metrics that matter, typical length, credentials).
3. Keywords and tools screeners look for.
4. The usual interview stages and who runs them.
5. Typical presentations, case studies, or assessments, and what is judged.
6. Pay and negotiation norms, with the date you checked them.
7. Common mistakes.

Say where each claim comes from or mark it as your experience. Do not guess.

## Ground rules

1. **Keep it generic.** Never include real names, employers, resumes, contact details, or real job applications. Use fictional examples. Your personal data is git-ignored (`profile/`, `jobs/`, `inbox/`, and similar), and a check blocks committing it. Do not work around it, and never force-add those paths.
2. **Do not invent facts.** The assistant's core rule is to ground everything. A guide should not state numbers or norms it cannot back up.
3. **Plain language.** Many users are not technical. No jargon, no commands for the user to run, no instructions to edit files by hand.
4. **No personal voice.** Shared files should read neutral. Personal style and preferences belong in `profile/overrides.md`, which is not shared.
5. **Change processes in playbooks.** Skills stay thin. If you change how something works, change the playbook.
6. **Study guides:** if you change the template, keep it a single file with no external dependencies, and test every tab in a browser.
7. **Log project changes.** Add a short entry to the root `CHANGELOG.md`: what changed and why. (`profile/changelog.md` is a user's private log and is never shared.)

## How to submit

If you are comfortable with GitHub:

1. Fork the repository and create a branch.
2. Make your change.
3. Run `git config core.hooksPath .githooks` once so the personal data check runs before each commit.
4. Open a pull request that says what you added, who it helps, and how you checked it.

If you are not, open an [issue](https://github.com/Justin-Medas/professional-career-assistant/issues) with your content pasted in, or ask your AI assistant: "Help me contribute this to the shared project." It can prepare the files for you. Nothing is submitted without your yes.

## Review

A maintainer will read your change for accuracy, privacy, and plain language, and may ask questions or suggest edits. Small, focused changes are reviewed fastest. Contributors keep credit through the commit history.

By contributing you agree your work is released under the project's MIT license.
