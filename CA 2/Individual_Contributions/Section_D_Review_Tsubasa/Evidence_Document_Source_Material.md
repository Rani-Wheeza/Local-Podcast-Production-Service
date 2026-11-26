# Evidence Document — CA1 Source Material for Section D

Supporting register for: [CA2_Section_D.md](CA2_Section_D.md) — Review and publication (Tsubasa Hirose, Member 4)

This register holds the passages from Rani Wheeza's CA1 analysis dossier that Section D relies on, quoted verbatim.

Each item has an evidence ID from ED01 upward. The main document cites these IDs. Source references are sections of `CA 2/CA1_Reference/Rani/CA1_Analysis_Dossier.md`, except ED37, ED38 and ED39, which quote `CA 1/Requirements/user-stories.md`, and ED40, which quotes `CA 1/Decisions/decision-log.md`.

Citation convention: in the main document, cite as (ED16). Evidence IDs stay stable. New items take the next number. Do not renumber existing ones.

---

## 1. Problem and outcomes (Dossier 1)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED01 | Proposals, contributor details, bookings, audio files, review notes and publication information are spread across email, shared folders, calendars and paper consent forms. The production coordinator needs reliable information about proposals awaiting decisions, upcoming sessions, equipment needs, missing consent or permissions, drafts awaiting review and scheduled publication, and this is hard to assemble from scattered sources. The collective also wants editorial discussion and sensitive contributor information restricted by role. The scenario confirms this as an organisational need. It does not establish that a privacy breach has occurred, nor how often any problem happens. The problem is information and coordination, not a lack of technology. | §1.2 | Base problem statement |
| ED02 | P4: Consent and review comments are recorded in several places. Consent on paper, by email or at the start of a recording; comments in separate email threads. | §1.3 | Scattered review comments |
| ED03 | Review comments in separate email threads (P4): It is harder to track what has been requested of each draft, and a requested change could be missed. Confirmed: several drafts exist and comments are sometimes sent in separate threads. Inferred: a requested change could be missed. This is a possible risk, not an established frequency. | §1.3 | Consequence of scattered comments. The missed change is inferred, not a confirmed frequency |
| ED04 | P5: Publication dates change without clear explanation. Dates move when another programme is urgent or a partner requests delay; partner wants an explanation. | §1.3 | Publication-date problem |
| ED05 | P6: A finished draft is blocked. A permission, contributor confirmation or editorial decision may be outstanding. | §1.3 | Blocked-draft problem |
| ED06 | P7: Corrections are hard to tell apart. Staff must distinguish a metadata correction from a new audio version. | §1.3 | Correction problem |
| ED07 | Publication readiness: Staff can tell whether an episode is ready to publish and, if not, which consent, permission or decision is missing. (P4, P6) \| Publication information: Staff can see the scheduled date of an episode and why it moved, so partners can be given a realistic date with an explanation. (P5) \| Version clarity: Staff can tell source recordings, drafts and approved versions apart, and a metadata correction from a new audio version. (P3, P7) | §1.4 | Desired outcomes this section serves |
| ED08 | The scenario does not say who may approve each programme type or channel, how versions relate, how corrections are handled or what each role may see (Q4 to Q7). Until these are confirmed, the analysis records that a change, decision or consent was made and why, without deciding what it triggers. | §1.5 | Open questions. No handling rule is added |

---

## 2. Scope (Dossier 2)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED09 | The Production Record System gives Kerry Community Media Collective a single, reliable record of each programme from proposal to publication and any later correction. It lets staff see what stage each proposal and episode has reached and what is blocking it, while keeping editorial discussion and sensitive contributor information restricted by role. | §2.1 | Purpose, including a later correction |
| ED10 | S6: Draft reviews and their outcomes (approved, returned, postponed or withdrawn), with comments kept against the draft. \| S8: Scheduled publication dates, the channel, and the reason when a date changes. \| S9: Post-publication corrections and replacement versions. | §2.2 | In scope for this section |
| ED11 | S1: Proposals, including series with planned episodes, and the editor's decision (accepted, rejected, returned or held) with any conditions. \| S3: Consent: in what form it was given (paper, email or at the start of a recording), for what intended use, and where the evidence is held. \| S5: Source recordings, drafts and approved versions, and how they relate. \| S7: Permissions for music, archive clips and external material. \| S10: An overview for the production coordinator covering proposals with no decision, held proposals, upcoming sessions, equipment needs, missing consent or permissions, drafts awaiting review and what blocks them, and scheduled publication. | §2.2 | Records this section reads or leaves to another section. This section does not record them |

---

## 3. Stakeholders, actors and goals (Dossier 3)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED12 | Authorised editor — Direct. Goal or interest: Review a draft's title, description, credits, permissions and channel, then record the outcome. Main concern: A corrected description confused with a new audio file. Influence: High. The scenario gives this role the pre-publication review. Whether it is the same person as the proposal editor is unknown (Q13). \| Production coordinator — Direct. Goal or interest: A reliable overview of proposals, sessions, equipment, missing consent or permissions, reviews and publication. Main concern: A finished draft blocked by one unnoticed missing item. Influence: High. Their needs are described in detail and shape FR12. | §3.1 | Actors for UC8, UC9 and the blocked-draft result |
| ED13 | G8: Authorised editor — Review a draft and record approved, returned, postponed or withdrawn. Telling a ready draft from a blocked one. Provisional. \| G9: Authorised editor — Record a correction or replacement after publication. A corrected description differs from a replacement audio file. Provisional (Q6). \| G12: Production coordinator — Record a change to a publication date with the reason. Dates changing without explanation. Confirmed. | §3.3 | Goals for UC8, UC10 and UC9 |
| ED14 | Authorised editor — Primary actor, provisional. Confirmed that this role reviews drafts. Whether it is the same person as the proposal editor is unknown (Q13). \| Offstage stakeholders still shape the requirements: partners drive FR10 and NFR1, contributors drive FR4 and FR5. | §3.2 | Q13 stays open. Partners shape FR10 without a Section D access scenario |

---

## 4. Requirements (Dossier 4)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED15 | FR9 (Must): The system shall allow an authorised editor to record a review of a draft as approved, returned for changes, postponed or withdrawn, with the date, the person who made it and comments kept against that draft. Source: Review outcomes in the scenario; comments are currently scattered. Verification: Record each outcome; check outcome, person, date and comment are kept on the correct draft. Links: S6, G8, UC8. | §4.2 | Requirement kept. Scenarios cover the four outcomes |
| ED16 | FR10 (Should): The system shall allow staff to record an episode's publication date and channel, and the reason when the date changes. Source: Dates change; the partner asks for an explanation. Verification: Change a date; check the earlier date, new date and reason are all retained. Links: S8, G12, UC9. | §4.2 | Requirement kept. No rejection rule is stated |
| ED17 | FR11 (Should): The system shall allow an authorised editor to record a post-publication correction or replacement, linked to the original publication, identified as a metadata correction or a new audio version, with the date and the person who made it. Source: The editor treats the two as very different changes. Verification: Record one of each; check each is linked to the publication and shows its type. Links: S9, G9, UC10. | §4.2 | Requirement kept. Handling stays open |
| ED18 | FR8 (Must): The system shall allow the technical editor to record the permission status of music, archive clips and external material against the draft that uses them, and show which permissions are still outstanding for a draft. Source: Technical editor's role; a missing permission can block a draft. Verification: Record one granted and one outstanding permission on a draft; check the outstanding one is shown. Links: S7, G7, UC7. | §4.2 | Read by the review scenarios. Not recorded in this section |
| ED19 | FR12 (Must): The system shall give the production coordinator a view of proposals with no recorded decision, proposals held for future consideration, upcoming sessions, equipment needs, missing consent or permissions, drafts awaiting review and what is blocking each draft, and scheduled publication. Links: S10, G3, UC11. | §4.2 | GS4 shows one blocker. This section adds no overview scenario |
| ED20 | FR6, FR10 and FR11 are Should because the process can still run without them in a first release, though the scenario names real problems in each. | §4.2 | Priority of FR10 and FR11 |
| ED21 | Where the scenario leaves a policy open, the requirement records information and does not impose a rule. | §4.1 | Why UC9 and UC10 have no failure scenario |
| ED22 | NFR1 (Must): Access: where a partner or volunteer view is provided, no internal editorial note shall be displayed in it. Basis: Partners should not automatically see internal notes; access reflects production roles (BR6, BR7). Conditional because direct access is unresolved (Q9). | §4.3 | Not tested in this section. Q7 and Q9 remain open |

---

## 5. Rules and uncertainty (Dossier 5)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED23 | BR3 (Stated): An authorised editor reviews a draft, its title, description, credits, permissions and intended channel before publication. \| BR4 (Stated): A draft review outcome is approved, returned for changes, postponed or withdrawn. \| BR5 (Stated): A draft with an outstanding permission, contributor confirmation or editorial decision is blocked from publication. \| BR8 (Implied): A metadata correction can be distinguished from a new audio version. Staff "need to distinguish" them; how they differ is not defined. | §5.1 | Rules kept. BR8 does not define the difference beyond the recorded type |
| ED24 | A7: Each episode in a series has its own review and publication record. Affects FR2, FR9. \| A8: Only an authorised editor records a release decision. Affects UC8. \| A9: Approval to publish applies per channel. Affects UC8, FR10. \| A11: An approved draft is a status of a draft, not a separate item. Affects FR7, domain model. | §5.3 | Kept as assumptions. The scenarios do not confirm them |
| ED25 | Q5: Who may approve each programme type and publication channel? Decision it affects: BR3, A8. \| Q6: How are corrections, replacements and withdrawal requests handled? Decision it affects: FR11. \| Q7: What may volunteers, contributors and partners see? Decision it affects: BR6, BR7, NFR1. \| Q13: Can the proposal editor and authorised editor roles be held by the same person, or must they be separate? Decision it affects: Actor roles, UC2, UC8, A8. | §5.5 | Carried forward unanswered |

---

## 6. Use cases (Dossier 6)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED26 | UC2: Record a proposal decision. Proposal editor. FR3. \| UC4: Record contributor consent and its evidence, including form and intended use. Production coordinator. FR5. \| UC6: Record source recordings and draft versions. An approved draft is not assumed to be the version published. Technical volunteer. FR7. \| UC7: Record permissions for material used. Technical editor. FR8. \| UC11: View the production overview, including proposals with no decision, held proposals and what is blocking each draft. Production coordinator. FR12. | §6.2 | Use cases outside this section's scenarios |
| ED27 | UC8: Review a draft. The authorised editor records the outcome. A draft with an outstanding permission, contributor confirmation or editorial decision is shown as blocked (BR5). A draft with nothing outstanding is not automatically approved; the editor still decides. Authorised editor. G8. FR9, FR8. \| UC9: Record or change a publication date, keeping the earlier date and the reason. Production coordinator. G12. FR10. \| UC10: Record a post-publication correction or replacement, linked to the original publication and identified as a metadata correction or a new audio version. Authorised editor. G9. FR11. | §6.2 | The three use cases in this section |
| ED28 | Awaiting review: No review outcome is recorded, so the draft is not approved. FR9. \| Blocked: A permission, contributor confirmation or editorial decision is outstanding, so the draft cannot be released (BR5). FR5, FR8, FR9. \| Approved: An authorised editor has recorded approval. FR9. \| Ready to be scheduled: Approved and nothing is outstanding. Derived. \| The model does not assume the system prevents an editor recording approval while something is outstanding, because the scenario does not say so. It states only that such a draft is not released. | §6.4 | State terms used by the scenarios. GS4 does not add a prevention rule |

---

## 7. Gherkin (Dossier 7)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED29 | Example data in the Gherkin scenarios is illustrative, not scenario fact. | Contents | Names, dates and comments in the feature file |
| ED30 | GS3: Authorised editor approves a reviewed draft with nothing outstanding (success). UC8. FR9, BR3. \| GS4: Technically complete draft blocked by an outstanding permission (failure). UC8. FR8, FR9, FR12, BR5. \| GS5: Publication date moved because another programme is urgent (alternative). UC9. FR10. \| FR11 Gherkin: none. | §7; §10.2 | Baseline scenarios kept by identifier. UC10 had no scenario |
| ED31 | P3, P7 and P8 depend on open questions (Q4, Q6) or have no stated rule, so their requirements record information without imposing a rule. | §10.3 | FR11 records the correction. It does not impose handling |

---

## 8. Concepts and domain model (Dossier 8–9)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED32 | Draft: An edited version of an episode prepared for review. Several can exist for one episode. \| Draft review: An authorised editor's review of a draft, resulting in approved, returned, postponed or withdrawn. \| Publication: The scheduled or actual release of an episode on a channel. \| Publication channel: A public channel through which an episode is released. \| Correction: A change after publication, either a metadata correction or a new audio version. The scenario does not define how they differ. \| Blocked: A draft that may be technically complete but cannot be published because a permission, contributor confirmation or editorial decision is outstanding. | §8.3 | Terms used in the scenarios |
| ED33 | Review comment, internal editorial note: Attribute of Draft Review. Comments belong to a review; visibility is the open policy matter Q7. | §8.2 | Comments are recorded. Who can see them is not decided |
| ED34 | DraftReview attributes: outcome, reviewDate, reviewedBy, comments. From FR9. \| Publication attributes: scheduledDate, actualDate, reasonForDateChange. From FR10. \| PublicationChannel attribute: name. From FR10. \| Correction attributes: type, reason, correctionDate. From FR11. | §9.1 | Fields the model names. The scenarios test the fields FR9, FR10 and FR11 state |
| ED35 | Blocked is not a class. It is derived from outstanding permission, consent or decision (BR5). \| Draft carries approved status (A11). How versions relate is unresolved (Q4), so a richer version structure is not justified. | §9.3 | No new state or version class is added |

---

## 9. Traceability (Dossier 10)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED36 | P4 (comments): Authorised editor, comments together (G8); FR9; UC8; Gherkin GS3, GS4; DraftReview, Draft; BR3, BR4. \| P5: Partners, realistic date and explanation (G12); FR10; UC9; Gherkin GS5; Publication, PublicationChannel; rules none. \| P6: Technical editor and coordinator, blockers visible (G7, G3); FR8, FR9, FR12; UC7, UC8, UC11; Gherkin GS4; Permission, Consent, Draft, DraftReview; BR5. \| P7: Authorised editor, corrections distinguished (G9); FR11; UC10; Gherkin none; Correction, Publication, Draft; BR8. | §10.1 | Chains the new scenarios extend. They do not replace these identifiers |

---

## 10. User stories (user-stories.md)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED37 | US8: As an authorised editor, I want to record my review outcome and comments against the draft, so that requests are kept together and the release decision is mine. Must. Related: FR9, BR3, BR4, BR5, UC8, G8, S6. Acceptance: 1. Approved, returned, postponed and withdrawn can be recorded. 2. Outcome, person, date and comments stay on the correct draft. 3. A draft with nothing outstanding is not approved automatically. Gherkin: GS3, GS4. Q5 and Q13: who may approve and role overlap are open. | `CA 1/Requirements/user-stories.md` | UC8 acceptance criteria |
| ED38 | US9: As a production coordinator, I want to record a publication date and the reason when it changes, so that partners can be given an explanation. Should. Related: FR10, UC9, G12, S8. Acceptance: 1. A moved date keeps the earlier date and the reason. Gherkin: GS5. Questions and assumptions: none. | `CA 1/Requirements/user-stories.md` | UC9 acceptance criterion. It states no rejection |
| ED39 | US10: As an authorised editor, I want to record a correction or replacement and whether it is a metadata correction or new audio, so that the two are not confused. Should. Related: FR11, BR8, UC10, G9, S9. Acceptance: 1. A correction links to the original publication. 2. Its type, person and date are kept. Gherkin: none. Q6: handling of corrections is open. | `CA 1/Requirements/user-stories.md` | UC10 acceptance criteria |

---

## 11. Decisions and reflection (Dossier 11)

| ID | Verbatim evidence | Source | Section D use |
|---|---|---|---|
| ED40 | D3: Blocked, awaiting review and approved are kept as separate draft states. Alternative considered: Treat a draft with nothing outstanding as automatically approved. Reason: The scenario says a draft can be complete but blocked; approval remains the authorised editor's decision. Related: BR3, BR5, UC8, GS3, GS4. | `CA 1/Decisions/decision-log.md` | Basis of GS3, GS4 and GS30 |
| ED41 | Rather than deciding which roles could approve proposals or publication, I left approval authority as an unresolved question (Q5). This avoids turning an interpretation into a confirmed business rule before the relevant stakeholders have clarified their responsibilities. \| Another important modelling decision was to distinguish between a draft awaiting review, a draft blocked by an outstanding permission and a draft approved for publication (D3). These states represent different conditions and should not be treated as interchangeable. | §11 | Q5 stays open. The three draft conditions stay separate |
