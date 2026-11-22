# Workspace Changelog

Every self-heal update gets one line: date, what changed, why. Newest at the bottom.

- Template created. Workspace is unconfigured; first session will run `playbooks/onboarding.md`.
- Added interview prep: playbooks/interview-prep.md, reference/interview-toolkit.md, jobs/_template/interview-prep.md. Wired into CLAUDE.md (behavior 5, session-start check) and onboarding (readiness questions, starter pitch).
- Added study guides: playbooks/study-guide.md, reference/study-guide-template.html (data-driven interactive HTML), a case-study/presentation stage in playbooks/interview-prep.md, and a study-guide offer hook. Added workflow skills (.claude/skills: setup, process-inbox, start-session, new-application, tailor-resume, interview-prep, interview-debrief, study-guide, profile-interview, self-heal) and agents (job-researcher, resume-fact-checker). Added behavior 9 (offer help proactively, plain language) with a trigger table to CLAUDE.md. README rewritten for non-technical users.
- Added examples/sample-study-guide-frontend-platform.html (fictional engineering panel guide built from the template), linked from the README and mentioned in playbooks/study-guide.md.
- Added AGENTS.md (points ChatGPT Codex and similar tools at CLAUDE.md and .claude/skills), index.html (GitHub Pages start page with a direct zip download and four steps), and a plain-language Quickstart in the README that names Claude and ChatGPT.
