# Playbook: Interview Prep

Note: `playbooks/interviewing.md` is about the assistant asking the user questions. This playbook is about preparing the user for job interviews.

Assume the first conversation is a **recruiter screen**, but treat it as step one of a longer process. Prep for the stage in front of the user, and surface what is coming next so nothing arrives unprepared.

## When this playbook runs

- The user mentions a recruiter reached out, a call is scheduled, or an interview is booked.
- A job folder's application log shows status `screen scheduled`, `interviewing`, or `offer`.
- The user asks "how do I prepare," "what should I ask them," or "write a thank-you."
- After any application is submitted, offer once: "Want me to build the interview prep file now so it is ready if they call?"

## Step 1: Intake (ask, 5 questions max, skip what is already known)

1. Which job (folder in `jobs/`)? If no folder exists, create one first via `playbooks/resume-tailoring.md` steps 1 to 2.
2. Which stage is this, and when? (recruiter screen, hiring manager, technical, panel/onsite, executive, offer)
3. Who is interviewing (names, titles) and what format (phone, video, onsite, take-home, live exercise)? Length?
4. Did the recruiter share the process, number of rounds, or timeline?
5. Anything the user is nervous about or knows is a weak spot for this role?

Record the answers in the job's `interview-prep.md` (copy from `jobs/_template/interview-prep.md`).

## Step 2: Show the roadmap

Tell the user the likely full process so they can plan, using the stage guide below. Adjust to the role family and company size: startups compress, large employers extend, and technical roles add a skills round. Say which stages are confirmed versus assumed, and ask the user to correct the roadmap as the recruiter reveals more. Offer to prep the next stage right after the current one.

## Step 3: Build the job-specific prep file

Fill `jobs/<company>-<role>/interview-prep.md`:

1. **One-page brief.** Company in five lines (product, customers, stage, size, recent news), the role's mission in one line, the user's top three fit arguments, the biggest risk to address.
2. **Pitch.** A 60 to 90 second "tell me about yourself" built from `positioning.md` and `career-history.md`: present, past, why this role. Draft it as reviewable text and refine with the user. Also a 20-second version.
3. **Why this company, why this role, why now.** Specific, tied to research, never generic. Ask the user for their genuine reason; do not invent enthusiasm.
4. **Requirement-to-story map.** For each of the posting's top 5 to 7 requirements, name the story from `career-history.md` or `reference/interview-answers.md` that proves it, in situation, action, result form. Where the evidence is thin, probe the user (see `playbooks/interviewing.md`) before drafting.
5. **Gap answers.** For each honest gap in `notes.md`, draft a truthful framing: what is true, what is adjacent, what the user is doing to close it. Never claim experience the user does not have.
6. **Likely questions.** Pull from the stage guide plus the role family. Include behavioral, role-specific, and company-specific questions. For each, link the story or answer outline.
7. **Questions to ask.** 8 prepared, pick 3 to 5 per interview. See "Questions to ask" below and `reference/interview-toolkit.md`.
8. **Interviewer notes.** For each named interviewer, summarize public professional background only (role, tenure, talks, articles, team) from sources the user can also see. Use it to tailor questions and rapport. Do not compile personal details (family, home, social media beyond professional posts).
9. **Logistics checklist.** See "Logistics" below.
10. **Compensation position.** The user's floor and target from `positioning.md`, researched market range for the role, and the planned answer (see recruiter screen guidance).

Offer a mock interview in chat after the file is drafted (see "Mock interviews").

## Stage guide

### Recruiter screen (assume this first)
- **Purpose:** the recruiter checks basic fit, motivation, logistics, and compensation alignment, and decides whether to advance the user. Usually 20 to 30 minutes. They are often not technical, so clarity beats depth.
- **They assess:** clear and concise pitch, relevant experience, genuine interest, communication, deal-breakers (location, comp, authorization, timing).
- **Prep:** pitch, why this company and role, why leaving or looking, comp answer, availability and notice period, location preferences, a one-line summary of the top 3 fit points using the posting's own words.
- **Compensation:** have a researched range and the user's floor ready. Preferred approach: share a target range anchored to market data and the role's level, or ask for the posted range first. Rules on asking about salary history vary by jurisdiction; the user is not obligated to disclose it. Do not state a number lower than the floor.
- **Ask the recruiter:** process stages and timeline, who the hiring manager is and who the user will meet, why the role is open, what the team is prioritizing, how the compensation band is structured, what separates candidates who advance, and the best way to follow up.
- **After:** debrief (below), thank-you to the recruiter within 24 hours.

### Hiring manager interview
- **Purpose:** judge whether the user can do the job, work with the manager, and solve the team's actual problems.
- **Prep:** deep read of posting priorities, a hypothesis about the team's biggest problem, two or three stories that mirror that problem, a 30-60-90 day outline (a draft idea, not a promise).
- **Ask:** what success looks like at 6 and 12 months, the biggest obstacle right now, how the team makes decisions, what the manager's leadership style is, what happened to the last person in the role.

### Technical or craft round (varies by role family)
- **Engineering:** coding or system design, past architecture decisions, code review. Practice out loud; ask clarifying questions first; narrate trade-offs.
- **Product:** product sense, prioritization, metrics, strategy case, a past launch walk-through.
- **Design or research:** portfolio walk-through (problem, role, process, outcome), critique, whiteboard or take-home.
- **Sales or solutions:** discovery role-play, demo, deal review.
- **Operations, finance, analytics, other:** case or scenario, tool proficiency, process improvement example.
- **Prep:** ask the recruiter exactly what is covered; build practice material for it; do a timed run.

### Panel or onsite loop
- **Purpose:** multiple perspectives on the same candidate. Often includes cross-functional partners, peers, and a values or culture round.
- **Prep:** an interviewer list with focus per person; vary stories so the user does not reuse one repeatedly (track which story went to whom in the prep file); stamina plan; consistent answers to the same question from different people.
- **Ask:** tailor per interviewer. Peers: how the work actually runs. Cross-functional: how the teams collaborate and where friction is. Reports or skip-levels: what they would change.

### Executive or final round
- **Purpose:** judgment, strategic thinking, level-appropriate scope, and alignment with the leader's agenda.
- **Prep:** a point of view on the company's market and risks, a concise articulation of the user's scope, and a clear ask for what they want from the role.
- **Ask:** company priorities for the next 12 months, how the executive thinks about the function, where the user's work would matter most.

### References and background checks
- Ask the user to line up 2 to 3 references now. Brief each one with the role, the posting, and what to emphasize. Never list a reference who has not agreed.

### Offer and negotiation
- Express enthusiasm, ask for the offer in writing, and ask for a reasonable window to review. Do not accept or decline on the call.
- Evaluate total package: base, bonus, equity (type, vesting, strike or grant price where relevant), benefits, level and title, start date, remote and relocation terms, severance or change-of-control terms for senior roles.
- Negotiate on the specifics the user cares about, using market data from research, and keep tone collaborative. This is general career guidance, not legal or financial advice; suggest a professional for equity or contract questions.
- Record the outcome in the job's notes and in `positioning.md` (comp data point, dated).

### If rejected
- Reply graciously, ask for feedback once, and record any signal (gap named, level mismatch, competing candidate) in the job's notes. Update `positioning.md` or `career-history.md` if the feedback reveals a pattern. Keep the door open: ask to stay in touch.

## Questions to ask (always arrive with them)

Rules:
- Prepare 8, ask 3 to 5 per interview, and adapt in real time to what has already been covered. Never say "no questions."
- At least two should reference something specific from research, the posting, or the interviewer's background. Specificity signals preparation.
- Do not ask what a quick web search would answer.
- Match the question to the interviewer. Save compensation, benefits, and process logistics for the recruiter.
- End each interview with a version of: "Based on our conversation, is there anything about my background you would want me to clarify?" It surfaces concerns while the user can still address them.
- Use the curated bank in `reference/interview-toolkit.md` as a starting point, then write role-specific ones in the prep file.

## General tips

- **Answer shape:** headline first, then evidence (situation, action, result), then a one-line takeaway. Aim for 1.5 to 2 minutes per answer. Ask whether the interviewer wants more detail.
- **Specifics over claims.** Names, numbers, dates, trade-offs. If the user has no number, say what changed in plain terms.
- **Honesty about gaps.** "I have not done X directly; the closest I have done is Y, and here is how I would approach it" beats bluffing.
- **Never badmouth** a past employer, manager, or colleague. Frame departures around what the user is moving toward.
- **Listen and mirror terminology.** Use the interviewer's vocabulary.
- **Clarify before answering** ambiguous or case questions.
- **Take a breath.** A brief pause before a hard question reads as composure.
- **Energy and curiosity** matter in a recruiter screen; they often decide on impression and clarity.
- **Notes are fine.** For phone and video, a one-page cheat sheet (pitch, three stories, questions, key numbers) is allowed and useful.

## Logistics checklist

- Confirm date, time, time zone, duration, format, link or address, and who to contact if something fails.
- Test audio, video, internet, and the meeting tool the day before. Charge devices. Have a phone as backup.
- Quiet, well-lit space; neutral background; camera at eye level.
- Resume, posting, and prep sheet open or printed. Water nearby.
- Join or arrive 5 to 10 minutes early. For onsite: route, parking, ID, who to ask for.
- Dress one notch above the company's norm unless told otherwise.
- Clear the calendar buffer after, so the debrief can happen right away.

## Mock interviews

Offer after the prep file exists. Run it in chat:
1. Ask which stage and interviewer type to simulate.
2. Ask one question at a time, in the interviewer's voice, with realistic follow-ups.
3. After each answer, give brief feedback: structure, length, evidence, honesty, and one improvement. Offer a tightened version of the answer as reviewable text, using only facts from the record.
4. Log recurring weak spots in the prep file and, if they reflect a profile gap, in `open-questions.md`.

## Debrief (within an hour of each interview)

Ask the user, then write to the job's `interview-prep.md` debrief log:
- Interviewer names, titles, and anything personal they shared that is appropriate to remember professionally.
- Questions asked and how the user answered; what landed, what stumbled.
- What the user learned about the role, team, and process.
- Next steps and promised timeline.
- Any concern the interviewer raised, and whether it was addressed.
- New facts about the user's experience mentioned during answers: route through `playbooks/self-healing.md` into `career-history.md`.

## Follow-up (always draft, never send without a clear yes)

- **Timing:** within 24 hours of each interview, one message per person. Same day is ideal.
- **Content:** thank them, reference one specific thing from the conversation, restate fit in one line tied to the team's problem, address any concern or missed answer briefly, and close with a clear, low-pressure next step. Keep it under 150 words.
- **Recruiter:** thank them, confirm understanding of next steps, and ask any logistics questions raised in the call.
- **Panel:** individual messages that differ in content. Do not copy and paste.
- **Silence:** if the promised timeline passes, follow up once after 2 business days, again after about a week, then one last courteous close-the-loop note. Keep each short.
- **Mechanics:** draft in markdown for review under the user's voice rules. If a Gmail connector is available, offer to save it as a draft in the user's account. Sending requires the user's explicit yes for that specific message.
- Templates are in `reference/interview-toolkit.md`.

## Tracking

Maintain the job's application log in `notes.md` with each interview as a row (date, stage, interviewers, format, status, follow-up sent). At session start, if any job has an interview within 3 days or a follow-up overdue, raise it first.

## Self-healing hooks

- A new story or fact surfaced during prep or debrief goes to `career-history.md` or `reference/interview-answers.md`.
- A better answer, tip, or question that worked goes into the toolkit or the role-family section of `playbooks/resume-tailoring.md`.
- Comp and process data points go into `positioning.md`'s industry knowledge log with a date.
- A format or company-specific insight that generalizes goes into this playbook under a new dated note.
