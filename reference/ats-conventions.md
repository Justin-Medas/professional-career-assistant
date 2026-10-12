# ATS Conventions

Durable knowledge about applicant tracking systems and resume parsing. Seeded from earlier research (2026-09-26); verify with a fresh search before relying on details for a specific employer, and add dated findings per system as you encounter them.

## General rules

- Single column. No tables, text boxes, columns, or graphics for layout.
- Put contact information in the document body. Many parsers drop headers and footers.
- Standard headings: Summary, Experience (or Work Experience), Skills, Education, Certifications.
- Each job is its own entry: title, company, location, and dates on plain lines.
- One consistent date format throughout (e.g. "Mar 2026 - Present").
- Do not use pseudo-headings inside a job (a bold "Featured Project:" label can be misread as a new job title).
- Use common fonts and plain bullets. No icons or ratings bars for skills.
- Spell out acronyms at least once where space allows, since keyword matching is literal.

## File format

- DOCX parses most consistently because paragraph styles expose structure.
- A text-layer PDF is second best. Avoid scanned or image PDFs.
- HTML is accepted by some systems but not recommended.
- Follow the employer's stated preference when given.

## Workday ("Autofill with Resume")

- Prefers DOCX, then text-layer PDF.
- Strips headers and footers, so contact info must be in the body.
- Reads each job as a discrete entry; keep title, company, and dates on plain lines.
- Keep a separate Workday-friendly version only if the reader-facing resume uses features that break parsing.

## Per-system log

Add dated notes as encountered (Greenhouse, Lever, Ashby, iCIMS, Taleo, SuccessFactors, USAJOBS, etc.).

- 
