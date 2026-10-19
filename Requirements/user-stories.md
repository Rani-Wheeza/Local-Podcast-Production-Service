# User-story backlog

Authoritative copy of the stories in dossier Appendix B. Requirements, rules and use cases remain authoritative in the dossier.

## US1: Record a proposal and its episodes

As a production coordinator, I want to record a programme or series proposal even when details are missing, so that proposals that begin as a short email are not lost or treated as complete.

- Business value: Gives every proposal a single starting record (P1).
- Priority: Must
- Related: FR1, FR2, UC1, G13, S1
- Acceptance criteria:
  1. A complete proposal and one with only a subject can both be recorded.
  2. Details not yet known show as not yet known.
  3. A series shows its planned episodes.
- Gherkin: none (verified by FR1 and FR2 tests)
- Questions and assumptions: Q1: minimum information before a decision is open.

## US2: Record a proposal decision

As a proposal editor, I want to record my decision and any conditions, so that a friendly conversation is not mistaken for approval.

- Business value: Removes the confusion behind P2.
- Priority: Must
- Related: FR3, BR1, BR2, UC2, G1
- Acceptance criteria:
  1. Accepted, rejected, returned and held can each be recorded.
  2. The decision shows the person, date and conditions.
  3. A proposal with no decision is never shown as approved.
- Gherkin: GS1, GS2
- Questions and assumptions: Q2 and Q5: reconsideration and approval authority are open.

## US3: Record contributor roles and credit

As a production coordinator, I want to record each contributor's role, contact preferences, availability and agreed credit per episode, so that contributors are described as agreed.

- Business value: Supports contributors' need to know how they are credited.
- Priority: Must
- Related: FR4, UC3, G14, S2
- Acceptance criteria:
  1. One person can hold different roles in two episodes.
  2. Each role keeps its own agreed credit.
- Gherkin: none (verified by FR4 test)
- Questions and assumptions: A6: coordinator records this.

## US4: Record consent and its evidence

As a production coordinator, I want to record each consent with its form, intended use, date and where the evidence is held, so that I can tell whether a contributor has agreed.

- Business value: Addresses scattered consent (P4) and a cause of blocked drafts (P6).
- Priority: Must
- Related: FR5, UC4, G10, S3, C5
- Acceptance criteria:
  1. Consent can be recorded as paper, email or verbal at the start of a recording.
  2. Form, use, date and evidence location are kept for each.
- Gherkin: none (verified by FR5 test)
- Questions and assumptions: Q3 renewal and Q10 who records consent are open.

## US5: Record sessions and equipment

As a session organiser, I want to record a session's date, location and equipment needs and flag a missing item, so that a missing cable or microphone is noticed before the session.

- Business value: Reduces stopped sessions (P8).
- Priority: Should
- Related: FR6, UC5, G4, G5, S4
- Acceptance criteria:
  1. A session lists its equipment.
  2. A missing component shows on the session.
- Gherkin: none
- Questions and assumptions: Whether the system prevents a session proceeding is not assumed.

## US6: Identify source recordings and drafts

As a technical volunteer, I want to record which files came from a session and which drafts use them, so that the correct source is easy to identify.

- Business value: Addresses working filenames and several drafts (P3).
- Priority: Must
- Related: FR7, UC6, G6, S5, A11
- Acceptance criteria:
  1. Several files from one session can be recorded.
  2. Each draft links to its sources.
  3. The approved draft can be identified.
- Gherkin: none (verified by FR7 test)
- Questions and assumptions: Q4: how versions are related is open.

## US7: Record permissions for material used

As a technical editor, I want to record permission for music, archive clips and external material against the draft that uses it, so that outstanding permissions are visible.

- Business value: Prevents a finished draft being blocked by an unnoticed permission (P6).
- Priority: Must
- Related: FR8, BR5, UC7, G7, S7
- Acceptance criteria:
  1. Granted and outstanding permissions can be recorded on a draft.
  2. Outstanding permissions are shown.
- Gherkin: GS4
- Questions and assumptions: none

## US8: Review a draft

As an authorised editor, I want to record my review outcome and comments against the draft, so that requests are kept together and the release decision is mine.

- Business value: Replaces scattered review threads (P4).
- Priority: Must
- Related: FR9, BR3, BR4, BR5, UC8, G8, S6
- Acceptance criteria:
  1. Approved, returned, postponed and withdrawn can be recorded.
  2. Outcome, person, date and comments stay on the correct draft.
  3. A draft with nothing outstanding is not approved automatically.
- Gherkin: GS3, GS4
- Questions and assumptions: Q5 and Q13: who may approve and role overlap are open.

## US9: Explain publication date changes

As a production coordinator, I want to record a publication date and the reason when it changes, so that partners can be given an explanation.

- Business value: Addresses changing dates (P5).
- Priority: Should
- Related: FR10, UC9, G12, S8
- Acceptance criteria:
  1. A moved date keeps the earlier date and the reason.
- Gherkin: GS5
- Questions and assumptions: none

## US10: Record corrections after publication

As an authorised editor, I want to record a correction or replacement and whether it is a metadata correction or new audio, so that the two are not confused.

- Business value: Addresses P7.
- Priority: Should
- Related: FR11, BR8, UC10, G9, S9
- Acceptance criteria:
  1. A correction links to the original publication.
  2. Its type, person and date are kept.
- Gherkin: none
- Questions and assumptions: Q6: handling of corrections is open.

## US11: See the production overview

As a production coordinator, I want one view of proposals with no decision, held proposals, sessions, equipment, missing consent or permissions, drafts awaiting review, blockers and scheduled publication, so that I can see what needs action.

- Business value: Answers the central problem P1.
- Priority: Must
- Related: FR12, UC11, G3, S10, A13
- Acceptance criteria:
  1. Each category appears under its own heading.
  2. A held proposal is listed separately from one with no decision.
  3. Each blocked draft shows what blocks it.
- Gherkin: GS2, GS4
- Questions and assumptions: A13: showing held proposals is an inference.

## US12: Limit what partners see

As a collective, we want partners to see progress without internal editorial notes, so that sensitive discussion stays restricted.

- Business value: Addresses P9.
- Priority: Must (NFR1, conditional)
- Related: NFR1, BR6, BR7, S11
- Acceptance criteria:
  1. Where a partner view exists, no internal editorial note appears in it.
- Gherkin: none
- Questions and assumptions: Q7 and Q9: what each role sees and whether partners log in are open.
