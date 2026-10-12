# Playbook: Per-Job Resume Tailoring

Every resume targets one job req. There is no generic resume; `profile/career-history.md` is the master record that tailored resumes draw from.

## Process

1. **Ingest the posting.** Create `jobs/<company>-<role-slug>/` from `jobs/_template/`. Save the full job req to `posting.md` with the URL and date. If given only a link, fetch it. If the fetch fails or is partial, ask the user to paste the text.
2. **Research.** Web search the company (product, stage, stack, recent news) and current conventions for this role family (titles, keywords, what screeners look for now). Note findings in `notes.md`. Promote durable findings to `positioning.md` or `reference/ats-conventions.md`.
3. **Map and probe.** List the posting's top requirements and match each to evidence in `career-history.md`. Record the map as a table in `notes.md` with a strength rating (strong, moderate, gap). For every major requirement with no matching evidence, ask the user whether they have relevant experience that is not yet recorded. Batch these probes into one short round before drafting.
   - Anything revealed during this step gets written back to `career-history.md` in the same session, not just used in the one resume. Follow `playbooks/self-healing.md`.
4. **Select an angle.** Use `positioning.md` to pick the narrative that best matches this req. Lead the summary and top bullets with the strongest match.
5. **Draft in markdown.** Save as `resume-draft.md` in the job folder. Markdown first, always; docx/PDF only after the user approves.
6. **Review.** Present the draft, flag every judgment call and any bullet resting on an unverified fact.
7. **Finalize.** On approval, produce docx (and PDF if requested) in the same folder using the docx/pdf skills. Apply the ATS rules below. Log the application in the job folder's notes (date, channel, contact, status).

## Tailoring rules

- Emphasis changes per job; facts never do. Reordering, reframing, and omitting are fine. Inventing and inflating are not.
- Mirror the posting's terminology where it is honest (if they say "microservices" and the user ships service-oriented systems, use their word; if the user has not done the thing, do not claim it).
- Recent and relevant gets space; old and irrelevant compresses or drops. Early-career roles appear only when they serve the angle.
- **Featured projects correlate to the job.** Select 2 to 4 per resume, chosen for their match to the posting, not a fixed set. If the best-matching project is thin in the profile, probe for detail before drafting.
- **Length** follows seniority (the user's target level is in `positioning.md`):
  - Early career or fewer than ~8 years: one page.
  - Mid to senior IC or manager: one to two pages; two is fine if every line earns its place.
  - Director, executive, or long careers: two pages is the norm; do not cut substantive leadership evidence to hit one page.
  - Academic, research, or federal roles have their own conventions (CV, USAJOBS); research the norm and ask.
- **ATS-safe structure** for the final file: single column, standard section names (Summary, Experience, Skills, Education), no tables for layout, no text boxes, no images, contact info in the body (not the header or footer), each job as its own entry with title, company, and dates on plain lines, one consistent date format. See `reference/ats-conventions.md`.
- Every bullet: one idea, verb-led, evidence over adjectives. Follow `profile/voice-and-style.md`.
- Unverified metrics never ship. If the strongest bullet needs a number nobody has, write it without the number.
- Keep a separate ATS-upload version only when the employer's system is known to parse poorly; otherwise one file serves both.

## Cover letters and outreach

Same grounding rules apply. Draft in the user's voice, lead with the single strongest match to the req, and keep to one page or under 250 words for outreach messages. Do not repeat the resume; add the "why this company" and one story the resume cannot hold.

## Role-family notes (grows over time)

Start empty. As tailoring happens for a role family, record what works in this section: which parts of the profile to lead with, keywords that recur, and any user feedback. Format:

- **<Role family>:** <what to lead with; what to downplay; recurring requirements>. (<date>)
