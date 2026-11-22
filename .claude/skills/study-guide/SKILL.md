---
name: study-guide
description: Build an interactive study guide (flashcards, timed practice, time plan, checklist) as one HTML file for a presentation, case study, panel, technical round, or any event the user must prepare for. Works out what materials are needed and asks only for what is missing. Use when the user mentions a case study, presentation, panel, "I have to present", "I need to learn", or nerves about a specific event. Also offer it proactively when an interview-prep file exists for a panel, technical, case, presentation, or executive stage.
---

# Study Guide

Follows `playbooks/study-guide.md`. Read it first. The user may not be technical: talk about outcomes, never about files, JSON, or commands.

1. **Offer, do not assume.** If the user did not ask, offer once in plain words: "I can build you an interactive study guide for this: flashcards, a timed practice run, and a checklist, in one file you open in your browser. Want me to?" Stop if they decline.
2. **Fill the event card** from what is already in the workspace (job folder, profile, this chat): event type, date, total length and split, who is in the room, what they judge, what the user delivers.
3. **Ascertain materials** using the table in the playbook. Check what exists, then ask for what is missing in one short message, at most 5 items, most valuable first. Say they can paste text, drop files in `inbox/`, or say they do not have it. For a case study, the prompt or brief comes first.
4. **Research** current, citable facts. Label unconfirmed items `(verify)`. Record durable findings in the job's `notes.md`.
5. **Choose tabs** by event type and write grounded content. Never invent metrics or experience; user facts come from `profile/career-history.md` and `reference/interview-answers.md`.
6. **Build** by copying `reference/study-guide-template.html` to the job folder as `study-guide.html` and replacing only the JSON data block. Validate the JSON, and open it in a browser tool if one is available.
7. **Hand over** in a few lines: where it is, how to open it (double-click), what each tab does, what is assumed, and a first step. Offer a spoken mock in chat.
8. **Run `self-heal`** for anything new the user told you. Update the guide when new materials arrive, keeping ids and order stable so saved progress survives.
