Supporting register for: CA2 Section B — Contributors and Consent (Arno Coetzer, Member 2)

This register holds every item of Rani Wheeza’s CA1 analysis dossier material that Section B relies on, quoted verbatim.

Each item has an evidence ID (E1 to E39). So the main document stays short and every claim in it can be checked against a source. Source references are to sections of Report/CA1_Analysis_Dossier.md file names refer to the CA1 repository.

**1. Problem and outcomes (Dossier 1)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E1 | Proposals, contributor details, bookings, audio files, review notes and publication information are spread across email, shared folders, calendars and paper consent forms. The production coordinator needs reliable information about proposals awaiting decisions, upcoming sessions, equipment needs, missing consent or permissions, drafts awaiting review and scheduled publication, and this is hard to assemble from scattered sources. The collective also wants editorial discussion and sensitive contributor information restricted by role. The scenario confirms this as an organisational need. It does not establish that a privacy breach has occurred, nor how often any problem happens. The problem is information and coordination, not a lack of technology. | §1.2 | Base problem statement quoted in Section 1 of the main document |
| E2 | Consent and review comments are recorded in several places. Consent on paper, by email or at the start of a recording; comments in separate email thread. (P4) | §1.3 | Consent scatter evidence for the Section B extension |
| E3 | Consent recorded in three different forms (P4): before publication, someone must check paper forms, emails and the start of recordings separately, and may find it harder to tell whether a draft is actually cleared. Confirmed: consent can be recorded on paper, by email or at the start of a recording, and a draft can be blocked by outstanding contributor confirmation. Inferred: scattered consent records make it harder to tell whether a draft is cleared. | §1.3 | The checking-burden consequence in the extension |
| E4 | A finished draft is blocked. A permission, contributor confirmation or editorial decision may be outstanding. (P6) | §1.3 | Contributor confirmation as a blocker (BR5) |
| E5 | Sensitive material may be seen by the wrong people. Partners should not automatically see internal editorial notes; volunteers should not see private correspondence. (P9) | §1.3 | Access restriction evidence for Section 6 |
| E6 | Publication readiness: staff can tell whether an episode is ready to publish and, if not, which consent, permission or decision is missing. (P4, P6) \| Information access: people see the information their production role needs. Partners can learn progress without seeing internal editorial notes, and volunteers do not see private correspondence. (P9) | §1.4 | Desired outcomes Section B serves |
| E7 | Contributors also need to know how their recording will be used and credited, and partners need progress information. These stakeholder needs shape the outcomes above even though the people themselves do not use the system (Section 3). | §1.4 | Contributors’ own need — basis of G10/G14 |
| E8 | A clarification is required to determine when new consent is needed for reuse, substantial editing or an additional channel (Q3). | §1.5 | Open question carried into Section 7 |

**2. Scope (Dossier 2)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E9 | S2: Contributors, their roles per episode, contact preferences, availability and agreed attribution. \| S3: Consent: in what form it was given (paper, email or at the start of a recording), for what intended use, and where the evidence is held. \| S11: Access restricted by production role, including progress information for partners without internal editorial notes. | §2.2 | The in-scope items Section B implements |

**3. Stakeholders, actors and goals (Dossier 3)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E10 | Contributors — Indirect stakeholder. Goal or interest: know where their recording appears, how they are credited and how it will be used. Main concern: unclear consent, use or credit. Influence: Medium. Consent and attribution requirements come from them; missing confirmation can block a draft. | §3.1 | Stakeholder grounding for Section 1 |
| E11 | Contributor — Offstage stakeholder. Direct access is unresolved, so staff record their information (A5, Q9). | §3.2 | Why staff record contributor data (A5) |
| E12 | Roles are responsibilities, not job titles. One person may hold several, and the model assumes no staffing structure. If partners or contributors turn out to log in, they become supporting actors. Offstage stakeholders still shape the requirements: partners drive FR10 and NFR1, contributors drive FR4 and FR5. | §3.2 | Basis of the Contributor CRC card boundary |
| E13 | G10: Production coordinator — record a contributor’s consent, its form and intended use (Provisional, Q10). \| G14: Production coordinator — maintain contributor and episode details; same person in several roles; credit and contact details (Provisional). | §3.3 | Goals UC3 and UC4 implement |
| E14 | Two goals are deferred and have no use case by design. G2, reconsidering an approved proposal after a significant change, waits on Q2. G11, recording a contributor’s concern and the decision on it, is outside the first release (Section 2.3, Q11). | §3.3 | Why contributor concerns are out of scope |

**4. Requirements (Dossier 4)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E15 | FR4 (Must): the system shall allow staff to record each contributor’s role in an episode, with contact preferences, availability and agreed attribution. Source: the same person may take different roles in several episodes; contributors want to know their credit. Verification: record one contributor in two roles on two episodes; check both retain their own attribution. Links: S2, G14, UC3. | §4.2 | Requirement behind Contributor/Contribution cards and GS6–GS7 |
| E16 | FR5 (Must): the system shall allow staff to record a contributor’s consent for an episode, including the form in which it was given (paper, email or verbal at the start of a recording), the intended use, the date, and where the evidence is held. Source: consent arrives in three forms; contributors should understand intended use. Verification: record one consent in each form; check form, use, date and evidence location are kept. Links: S3, G10, UC4. | §4.2 | Requirement behind the Consent card and GS8–GS10 |
| E17 | NFR1 (Must): access — where a partner or volunteer view is provided, no internal editorial note shall be displayed in it. Basis: partners should not automatically see internal notes; access reflects production roles (BR6, BR7). Conditional because direct access is unresolved (Q9). Verification: create sample internal notes and test the partner and volunteer views; pass only if none appears. | §4.3 | Access requirement for Section 6 and GS11 |

**5. Rules, constraints, assumptions, risks, questions (Dossier 5)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E18 | BR5: a draft with an outstanding permission, contributor confirmation or editorial decision is blocked from publication (Stated). \| BR6: access to information reflects production roles (Stated). \| BR7: partners do not automatically see internal editorial notes (Stated). | §5.1 | Business rules the Gherkin and CRC design must respect |
| E19 | C2: access should reflect production roles. \| C5: consent may be recorded on paper, by email or at the start of a recording. | §5.2 | Constraints cited in the extension and scenarios |
| E20 | A2: paper consent forms remain in use; the system records that consent exists and where the evidence is held (FR5). \| A5: staff enter information on behalf of partners and contributors, who are offstage stakeholders (Actors). \| A6: the production coordinator records proposals, contributors and consent (UC1, UC3, UC4). | §5.3 | Assumptions the Controller reasoning builds on |
| E21 | R2: consent renewal is handled inconsistently — an episode could be reused or republished without valid consent. \| R3: paper consent forms stay outside the record — the record may look complete when it is not. \| R5: sensitive contributor information is exposed through wrong access — privacy harm and loss of contributor trust. | §5.4 | Risks motivating GS9 and the evidence-location attribute |
| E22 | Q3: when is new consent required for reuse, substantial editing or an additional channel? (FR5, R2) \| Q7: what may volunteers, contributors and partners see? (BR6, BR7, NFR1) \| Q9: do partners and contributors use the system directly? (A3, A5, actors) \| Q10: who records consent and proposals? (A6) \| Q11: how should contributor concerns be recorded and who may see them? (Deferred requirement and use case) | §5.5 | Outstanding questions for Section 7 |

**6. Use cases (Dossier 6)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E23 | UC3: maintain contributor and episode details — initiating actor: production coordinator (G14, FR4). \| UC4: record contributor consent and its evidence, including form and intended use — initiating actor: production coordinator (G10, FR5). | §6.2 | The two use cases Section B owns |
| E24 | Who records proposals and consent (UC1, UC4) is an assumption. The scenario does not say, so both go to the production coordinator (A5, A6). \| Reconsideration and contributor concerns are not use cases. Reconsideration waits on Q2. Contributor concerns are deferred because a use case would require inventing handling policy (Q11). This is a scoping decision, not an oversight. | §6.4 | Controller assignment and scope boundary |
| E25 | Blocked: a permission, contributor confirmation or editorial decision is outstanding, so the draft cannot be released (BR5). Recorded by FR5, FR8, FR9. | §6.4 | Draft-state vocabulary GS10 must match |

**7. Gherkin (Dossier 7)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E26 | GS3, Scenario: authorised editor approves a reviewed draft with nothing outstanding — Given the draft “Episode 2: The Last Currach Builder” is awaiting review, and every contributor consent for the episode is confirmed, and the permission for the archive clip in the draft is recorded as granted; when the authorised editor reviews the draft and approves it for the “podcast feed” channel; then the draft is recorded as approved for that channel with the editor’s name and the date, and the draft is shown as ready to be scheduled. | §7, production_record.feature | The only existing consent scenario — GS6–GS11 must stay consistent with it |

**8. Concepts and domain model (Dossier 8–9)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E27 | Contributor — Keep. FR4; holds contact preferences and availability. \| Presenter, interviewee, performer, technical volunteer — convert to attribute: values of a role; the same person may contribute in different roles. \| Contribution — Keep. A contributor’s role in one episode, with agreed credit. \| Credit / attribution — attribute of Contribution: agreed description per episode. \| Consent — Keep. FR5; form, intended use, date. \| Consent form, email consent, verbal consent — merge into Consent: different forms of the same concept; form is an attribute. \| Intended use — attribute of Consent: Q3 depends on it. | §8.2 | Candidate decisions behind the three CRC cards |
| E28 | Contributor: a person who takes part in an episode, such as a presenter, interviewee, performer or technical volunteer. \| Contribution: a contributor’s role in one episode, with any agreed credit. \| Consent: a contributor’s agreement to the intended use of their contribution, given on paper, by email or at the start of a recording. \| Permission: authorisation to use third-party material such as music, an archive clip or externally supplied material. Different from consent. \| Blocked: a draft that may be technically complete but cannot be published because a permission, contributor confirmation or editorial decision is outstanding. | §8.3 | Glossary wordings for the CRC cards |
| E29 | Contributor: name, contactPreference, availability (FR4). \| Contribution: role, agreedCredit (FR4). \| Consent: form, intendedUse, dateGiven (FR5). | §9.1 | Attributes on the three CRC cards |
| E30 | Contributor makes Contribution — 1 to 0..\*: the same person contributes to several episodes in different roles. \| Episode involves Contribution — 1 to 0..\*: each contribution is to one episode. \| Contribution is covered by Consent — 1 to 0..\*: a new consent may be needed (Q3). | §9.2 | Associations and multiplicities the CRC collaborators follow |
| E31 | Several multiplicities come from reasoning, not scenario evidence, for example zero or more consents per contribution and zero or more publications per draft. They are assumptions, to be confirmed with Q3 and Q4. | §9.2 | Caveat to state beside the Consent card |
| E32 | Contribution links Contributor, Episode and Consent, so one person can have a different role and consent per episode. \| Consent and Permission are separate. Consent comes from a contributor; permission is for third-party material. \| Blocked is not a class. It is derived from outstanding permission, consent or decision (BR5). | §9.3 | Modelling rationale the GRASP justification builds on |

**9. Traceability (Dossier 10)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E33 | FR4 — Must, S2, G14, UC3, Gherkin: none, domain concepts: Contributor, Contribution, Episode, rules: none. \| FR5 — Must, S3, G10, UC4, Gherkin: none, domain concepts: Consent, Contribution, rules: C5. | §10.2 | The Gherkin gap GS6–GS11 fill |
| E34 | FR1, FR2, FR4, FR5 and FR7 are Must requirements with no Gherkin scenario. The brief allows three to five examples, so each is traced through a use case instead. FR5 is the weakest, because consent is a problem the scenario stresses. \| Requirements without a Gherkin example are still verifiable: each has a pass-or-fail verification method in Section 4.2 and acceptance criteria in the user stories (Appendix B). Consent (FR5) is verified by recording one consent in each of the three forms and checking that form, use, date and evidence location are kept. | §10.3 | Rani’s own justification for adding the Section B scenarios |

**10. User stories (Appendix B / user-stories.md)**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E35 | US3: as a production coordinator, I want to record each contributor’s role, contact preferences, availability and agreed credit per episode, so that contributors are described as agreed. Must. FR4, UC3, G14, S2. Acceptance: one person can hold different roles in two episodes; each role keeps its own agreed credit. Gherkin: none (verified by FR4 test). A6: coordinator records this. | user-stories.md | Story behind GS6–GS7 and the Contributor/Contribution cards |
| E36 | US4: as a production coordinator, I want to record each consent with its form, intended use, date and where the evidence is held, so that I can tell whether a contributor has agreed. Must. FR5, UC4, G10, S3, C5. Acceptance: consent can be recorded as paper, email or verbal at the start of a recording; form, use, date and evidence location are kept for each. Gherkin: none (verified by FR5 test). Q3 renewal and Q10 who records consent are open. | user-stories.md | Story behind GS8–GS10 and the Consent card |
| E37 | US12: as a collective, we want partners to see progress without internal editorial notes, so that sensitive discussion stays restricted. Must (NFR1, conditional). NFR1, BR6, BR7, S11. Acceptance: where a partner view exists, no internal editorial note appears in it. Gherkin: none. Q7 and Q9: what each role sees and whether partners log in are open. | user-stories.md | Story behind GS11 and Section 6 |

**11. Decisions and reflection**

| **ID** | **Verbatim evidence** | **Source** | **Section B use** |
|----|----|----|----|
| E38 | D1: partners and contributors are offstage stakeholders, not actors. Alternative considered: make them supporting actors with direct access. Reason: the scenario leaves direct access unresolved; staff are assumed to enter information for them. Revisit if Q9 is answered yes. \| D2: contributor concerns are deferred from the first release (no requirement, use case or goal G11). Alternative considered: keep as a Could requirement (FR13). Reason: the scenario confirms the need but gives no process, owner or visibility rule, so a requirement would invent policy. | decision-log.md | Scope and actor decisions the design must not contradict |
| E39 | The main limitation is that several operational decisions remain unresolved, including final approval authority, the handling of significant changes and when new consent may be required for reuse, editing or publication through another channel (Q3). | §11 | Rani’s own framing of the open consent question |

Citation convention: in the main document, cite as “Evidence Document, E16 (Dossier §4.2)”. The evidence IDs are stable for this submission; if the register is extended, new items take the next number rather than renumbering existing ones.
