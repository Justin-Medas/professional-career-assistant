# Playbook: Source Ingestion

How to turn a file, export, link, or pasted text into facts in `profile/career-history.md` without losing provenance or inventing detail. Used by onboarding and any time new material arrives in `inbox/`.

## General procedure

1. **Inventory.** List the files, their types, and apparent dates (from filename, document text, or file modified time). State the list to the user.
2. **Preserve.** Copy resumes to `reference/resumes/originals/` unchanged (keep the original filename; prefix with an ISO date if the document states one). For other files, leave in place until processed, then move to `inbox/processed/`.
3. **Extract text.** Use the docx or pdf skill, or on macOS `textutil -convert txt <file>` for Word documents. For scanned PDFs or images, use OCR via the pdf skill or read the image directly. If text extraction fails, say so and ask the user to paste the content.
4. **Extract facts.** Pull out roles, employers, dates, locations, scope, accomplishments, metrics, skills, education, credentials, projects. Keep the user's original phrasing for accomplishments in a scratch note; rewrite into the canonical record only after de-duplicating.
5. **Tag provenance.** Every fact in `career-history.md` ends with a short source tag in brackets, e.g. `[resume 2023-04]`, `[LinkedIn export 2026-10]`, `[review FY24]`, `[user, session 2026-10-12]`. When a fact is confirmed in conversation, replace the file tag with the user tag.
6. **Reconcile.** Compare against existing facts. For each mismatch (title, dates, employer name, metric) record it under a "Conflicts" list in `profile/open-questions.md` with both values and sources. Do not silently pick one.
7. **Report.** Tell the user what was added, what conflicted, and what the file was useful for. Then move the file to `inbox/processed/`.

## Reconciling rules

- Newer source beats older for current-state facts (title, scope, tools).
- Older source can hold facts the newer one dropped. Keep them, tagged with their date.
- For metrics, prefer the source closest to the event (a review from that year over a resume written later). If two metrics for the same thing differ, flag it.
- LinkedIn and resumes often differ on exact titles and dates. Resumes are usually more precise on accomplishments; LinkedIn is usually better on exact start/end months and recommendations. Still confirm with the user.
- Never merge two roles into one or split one into two without checking.

## By source type

### Resumes (docx, pdf, md, txt)
- Highest value per file. Extract every bullet; many will be reworded variants of the same accomplishment. Group them and keep the most specific phrasing.
- Record target role and emphasis of each version in `reference/resumes/summary.md`. Tailored versions reveal which strengths the user chose to foreground for which job.
- Note formatting patterns the user kept across versions (section order, header style); they inform voice and structure preferences.

### LinkedIn data export (CSV files in a zip)
Typical files and what to take:
- `Profile.csv`: headline, summary, location, industry.
- `Positions.csv`: company, title, description, location, start, end. Descriptions are often shorter than resume bullets.
- `Education.csv`: school, degree, dates, activities.
- `Skills.csv`: skill names; endorsements are not in the export. Treat as a keyword list, not as evidence.
- `Certifications.csv`, `Courses.csv`, `Projects.csv`, `Honors.csv`, `Publications.csv`, `Languages.csv`, `Volunteering.csv`: take whatever is present.
- `Recommendations_Received.csv`: capture the claims and the recommender's relationship and role. Do not store the recommender's contact info.
- `Connections.csv`, `Messages.csv`, `Invitations.csv`, ads and search data: do not ingest. If the user wants network analysis for a job search, ask first and only use connections' employer and title columns.

Column names vary by export version. Read the header row and map by meaning.

### LinkedIn profile PDF
Layout is fixed: Contact, Top Skills, Languages, Summary, Experience, Education. Parse by section. Dates appear as "Month Year - Month Year (duration)".

### LinkedIn live read (Claude in Chrome)
Only for the user's own profile, only after permission. Open the profile, read the page text for Experience (expand "see more"), Education, Skills, Recommendations, and Featured. Do not click Connect, Message, or any action control. Do not browse anyone else's profile for this purpose.

### Pasted text
Treat as a resume-like source. Ask which job or section it came from if unclear.

### Performance reviews and brag docs
- Extract outcomes, metrics, ratings language (e.g. "exceeds expectations") only if the user wants it used; ratings rarely belong on resumes.
- Manager comments are useful for strengths, growth areas, and the user's real scope of ownership.
- Confidential employer details (customer names, revenue, unreleased products): flag and ask before including any of it in `career-history.md`. Default is to generalize.

### Writing samples (cover letters, emails, posts)
Not for facts first; for voice. Feed into `voice-and-style.md` (Step 8 of onboarding). Facts found in them still go through provenance tagging.

### Project material (decks, design docs, case studies, portfolios)
Extract: problem, user's role, team size, tech, timeline, outcome. These become "featured project" candidates. Store each in `career-history.md` under its role as a short project entry; do not paste full documents.

### Public web pages (site, GitHub, blog, talks)
Fetch with web tools. Record project names, stacks, dates, and public metrics (stars, downloads, attendance) with the URL as the source tag. Do not attribute other contributors' work to the user: for GitHub, check what the user actually authored.

### Cloud connectors (Drive, Gmail, others)
- List candidate matches and let the user choose before reading contents.
- State the account and the scope searched.
- Take only career-relevant facts. Do not store unrelated email content.
- For Gmail application history, record company, role, approximate date, and outcome if known; this feeds `jobs/` history and avoids reapplying blindly.

### Images and screenshots
Read directly. If a screenshot is of a resume or profile, treat as that source type.

## What to do with sensitive material

If a file contains government IDs, bank details, medical information, or other categories listed in `playbooks/self-healing.md` under "What not to store", do not copy them into the workspace. Tell the user, extract only the career facts, and suggest they remove the file from `inbox/` after processing.

## After ingestion

- Update `profile/setup-status.md` counts (sources processed, roles found).
- Append a CHANGELOG line: date, sources ingested (count and types), net new facts, conflicts logged.
- Queue follow-up questions in `profile/open-questions.md` for anything thin: roles with no metrics, vague scope, undated entries.
