# Group Decision Log (CA2)

Short dated records of significant group decisions. Each entry states the context, the decision, the reasoning and the consequences.

**Status values:** Proposed (drafted, not yet agreed) · Agreed (confirmed by the group) · Superseded (replaced by a later decision)

Identifiers such as FR, BR, UC, D and RD refer to the Scenario 29 CA1 dossier and the reconciliation record.

| ID | Date | Title | Status |
|---|---|---|---|
| DEC-01 | _02/11/26_ | Scenario 29 selected for CA2 | Agreed (lecturer approved) |
| DEC-02 | _02/11/26_ | GitHub Projects used as the group board | Agreed |
| DEC-03 | _04/11/26_ | Scope changes from lecturer instructions | Agreed (lecturer instruction) |
| DEC-04 | _09/11/26_ | Reconciliation decisions recorded separately | Agreed |
| DEC-05 | _13/11/26_ | Q14 and Q15 resolved by group decision | Agreed |
| DEC-06 | _17/11/26_ | Gherkin scenario numbers allocated by section | Agreed |
| DEC-07 | _18/11/26_ | Add the proposer to FR1 | Agreed |
| DEC-08 | _24/11/26_ | Add a note to ProposalDecision | Agreed |
| DEC-09 | _25/11/26_ | UC2 selected for detailed design; UC8 second if time allows | Agreed |
| DEC-10 | _26/11/26_ | Controller pattern for CA2 design | Agreed |
| DEC-11 | _27/11/26_ | One consent covers all drafts and channels until Q3 is answered | Agreed |
| DEC-12 | _27/11/26_ | Extend NFR1 to private correspondence and sensitive contributor information | Agreed |
| DEC-13 | _27/11/26_ | Add evidenceLocation to Consent | Agreed |

---

## DEC-01: Scenario 29 selected for CA2

- **Date:** _02/11/26_ · Lecturer approval: _02/11/26_
- **Context:** Each member proposed their CA1 scenario: 29 Local Podcast Production Service (Rani), 31 KETCo (Arno), 11 Atlantic Edge Experiences (Jack) and 36 Banking Operations (Tsubasa). The group compared them against scope, behavioural richness, OO potential, sliceability, testability and comparability.
- **Decision:** Scenario 29, Local Podcast Production Service, is the basis for all CA2 work.
- **Reasoning:** It has a clear and manageable boundary, connected workflows with alternative outcomes (decisions, reviews, corrections) and well-defined domain concepts. See the scenario suitability matrix.
- **Rejected alternatives:** Scenarios 31, 11 and 36. Reasons are recorded in the matrix.
- **Consequences:** All CA2 artefacts build on the Scenario 29 analysis. The other three CA1s are used for method, not content (reconciliation record, RD-14).
- **Evidence:** `Group_Documents/Scenario_Suitability_Matrix/` · issue #2

## DEC-02: GitHub Projects used as the group board

- **Date:** _02/11/26_
- **Context:** The brief names Trello or Microsoft Planner for the board. It also allows the authoritative backlog to be kept in GitHub Issues.
- **Decision:** Use GitHub Projects (kanban) with every backlog item as a GitHub issue, instead of Trello or Planner.
- **Reasoning:** Keeping the board, issues, commits and pull requests in one place lets each commit link to its card through the issue number. This makes progress and review easier to trace, and avoids keeping two tools in step.
- **Rejected alternatives:** Trello or Planner mirrored from GitHub Issues. Rejected because keeping two tools synchronised adds work without adding evidence.
- **Consequences:** Board columns follow the brief: Backlog, Ready, In Progress, Peer Review, Blocked, Done. Commit messages reference issue numbers, for example `(#6)`. Board captures are exported for submission. _Confirm with the lecturer that this is acceptable._
- **Evidence:** Project board · issue #5

## DEC-03: Scope changes from lecturer instructions

- **Date:** _04/11/26_
- **Context:** After scenario approval, the lecturer changed the assessment.
- **Decision:** The group follows these instructions:
  1. CA3 will not run, so no CA3 slice specifications are produced.
  2. Four artefacts are removed from CA2: architecture and integration contract, CA3 slice specifications, technology decision record, and project and contribution evidence.
  3. CA2 is now worth 30% of the module instead of 15%.
- **Reasoning:** Lecturer instruction.
- **Consequences:** The backlog card for architecture and integration contracts was deleted, and contribution evidence was removed from the walkthrough card. The implementation catalogue is ordered by value, dependency and risk instead of CA3 slices. The `Architecture/Integration_Contracts/` folder is no longer needed. 
- **Evidence:** Reconciliation record, Section 3 (L2–L4)
- **Update (27/11/26):** The updated brief (Part 2) restores individual contribution evidence. Each member submits a contribution statement and an individual AI declaration.

## DEC-04: Reconciliation decisions recorded separately

- **Date:** _09/11/26_
- **Context:** Reconciling the CA1 analyses produced 19 decisions (RD-01 to RD-19), including corrections to the Scenario 29 analysis.
- **Decision:** The reconciliation record holds the RD decisions in full. This log does not repeat them. Once the group agrees them, add one line here: "RD-01 to RD-19 agreed on _11/11/26_, except _changes_."
- **Reasoning:** Avoids two copies of the same decisions drifting apart.
- **Consequences:** CA1 decisions D1, D2, D4, D5, D6, D8 and D10 carry forward (RD-03). From now on, new design decisions are logged here, for example controller choice, responsibility allocation and changes to the domain model.
- **Evidence:** `Group_Documents/Reconciliation_Record/CA1_Reconciliation_Record.md` · issue #6

## DEC-05: Q14 and Q15 resolved by group decision

- **Date:** _13/11/26_
- **Context:** Reconciliation found two gaps in the scenario. BR5 says a draft can be blocked by an outstanding "contributor confirmation" (Q14) or "editorial decision" (Q15), and the scenario defines neither. The brief asks for questions to be recorded; it does not require them to be sent to the lecturer.
- **Decision:** The group adopts two design assumptions instead of waiting for an answer:
  1. Contributor confirmation means an outstanding Consent for a Contribution on the draft's episode (RD-05).
  2. An editorial decision is outstanding only when a draft was returned for changes and has not been reviewed again (RD-06). An unreviewed or postponed draft is not shown as Blocked, but it cannot be published without approval.
- **Reasoning:** Both readings fit the existing domain model and business rules, so no new class or policy is invented. The design can go ahead without depending on an external answer.
- **Rejected alternatives:** Waiting for lecturer clarification before designing UC8. Rejected because it would block the design work, and the assumptions are easy to reverse.
- **Consequences:** BR5 and the glossary are reworded in the analysis baseline. Q14 and Q15 stay in the clarification-question register marked as resolved by this decision. Revisit if the lecturer or an expansion brief says otherwise.
- **Evidence:** Reconciliation record, RD-05, RD-06 and Section 7 · issue #6


## DEC-06: Gherkin scenario numbers allocated by section

- **Date:** _17/11/26_
- **Context:** Each section writes its Gherkin scenarios in its own feature file. If sections number scenarios independently, the numbers clash when the files are consolidated (#20).
- **Decision:** CA1 scenarios GS1–GS5 keep their numbers. Each section uses its own block:
  - Section A (Proposal management): GS10–GS19
  - Section B (Contributors and consent): GS20–GS29
  - Section D (Review and publication): GS30–GS39
  - Section C (Recording and drafts): GS40–GS49
- **Reasoning:** Fixed blocks let each section work independently without checking anyone else's numbers. Section D had already started at GS30, so the blocks were arranged around it.
- **Rejected alternatives:** Numbering scenarios one after another across all files. Rejected because sections work in parallel and would clash.
- **Consequences:** Recorded in baseline Section 7. A section needing more than ten scenarios asks the group for a further block.
- **Evidence:** Analysis baseline Section 7 (#7) · feature files in `Requirements_and_Gherkin/Feature_Files/`

## DEC-07: Add the proposer to FR1

- **Date:** _18/11/26_
- **Context:** The scenario says programmes may be proposed by staff, volunteers or partner organisations, and partners want progress on their proposals. The domain model records the proposer (`proposedBy`, *PartnerOrganisation proposes Proposal*), but FR1 does not ask for it.
- **Decision:** Reword FR1 to include who proposed the programme (staff member, volunteer or partner organisation).
- **Reasoning:** Gives the existing model attribute and association a requirement behind them, and supports partner progress information.
- **Consequences:** If agreed, update FR1 in the baseline (#7). GS10 keeps its proposer step. If rejected, remove that step from GS10.
- **Evidence:** Section A review (#11) · reviewed by Tsubasa


## DEC-08: Add a note to ProposalDecision

- **Date:** _24/11/26_
- **Context:** UC2 records a reason for rejection, what needs revising, or when to look again (GS13, GS14, GS15). `ProposalDecision` only has `conditions`, which apply to an acceptance.
- **Decision:** Add a `note` attribute to `ProposalDecision`.
- **Reasoning:** Keeps conditions and explanatory notes separate, so the operation contract for `recordDecision` matches the model.
- **Consequences:** Domain model (#8) and baseline Section 9.1 updated. CO4 already uses it.
- **Evidence:** Section A operation contracts (#21) · AI-supported: gap identified with AI help, agreed by the group (see AI log)


## DEC-09: UC2 selected for detailed design; UC8 second if time allows

- **Date:** _25/11/26_
- **Context:** The lecturer limited detailed design to one or two use cases: one in full detail first, a second only if time allows (reconciliation record L6).
- **Decision:** UC2 (Record a proposal decision) is taken through detailed design: object-interaction diagrams and the design class diagram. UC8 (Review a draft) is the second use case if time allows.
- **Reasoning:**
  - UC2 addresses the scenario's clearest problem: an encouraging discussion mistaken for approval (BR1).
  - It has rich behaviour: four outcomes (BR2) plus controlled failures, giving the interaction diagrams real alternatives.
  - It is the most complete: detailed use case, SSD, contracts (CO4), CRC cards, GRASP and seven Gherkin scenarios already exist.
  - Its scope (four to five classes) allows full depth.
  - Proposed independently by two members (Rani and Tsubasa).
- **Rejected alternatives:**
  - UC8 first: it addresses the blocked-draft problem (BR5) and links Sections B, C and D, but it spans more classes and rules, so it is kept as the second choice.
  - Other use cases: less behaviour (UC1, UC9) or still open questions (UC10, Q6).
- **Consequences:** Per-section interaction-diagram cards are replaced by shared UC2 cards. The implementation catalogue (#9) records the priorities. SSDs and contracts already produced for other use cases remain as analysis evidence.
- **Evidence:** Reconciliation record L6 · Section A CRC and GRASP (#28, #32) · implementation catalogue (#9)

---
## DEC-10: Controller pattern for CA2 design

- **Date:** _26/11/26_
- **Context:** Each section designed its own controller. UC11 reads data from all sections. UC11 had no controller (#43).
- **Decision:** One use-case controller for each section: ProposalController (A), ContributorConsentController (B), RecordingDraftController (C) and ReviewPublicationController (D). Also, one ProductionOverviewController for UC11. This controller only reads data.
- **Reasoning:** Each controller keeps high cohesion. The design does not use one facade controller. UC11 only reads data. Thus, its controller is small. It asks the domain objects for their data.
- **Rejected alternatives:** A facade controller (approximately 24 operations, a God controller). UC11 in a controller that exists. No controller for UC11.
- **Consequences:** All controllers get the current date from one shared Clock interface and use repositories to find and save objects. Section C uses the name RecordingDraftController (agreed by Jack). The DCD (#44) shows five controllers and the shared Clock. Each member updates their own section file.
- **Evidence:** `Object_Oriented_Design/GRASP/controller-pattern-decision.md` · #43 (agreed by Rani, Jack and Tsubasa; confirmed by Rani)
---

## DEC-11: One consent covers all drafts and channels until Q3 is answered

- **Date:** _27/11/26_
- **Context:** Q3 (when new consent is needed for reuse, a large edit or a new channel) is not answered. BR5 blocks a draft with outstanding consent, but the blocked rule needs to know which consent counts (#29).
- **Decision:** One Consent record for a Contribution satisfies BR5 for all drafts and all channels of the episode. Recorded as assumption A15 in the analysis baseline.
- **Reasoning:** The design can go ahead without an answer to Q3. It adds no new rule or attribute, and it is easy to change.
- **Rejected alternatives:** A new consent for each draft or each channel. Rejected because the scenario gives no rule for this, so it would invent policy.
- **Consequences:** `Episode.hasOutstandingConsent()` and `Contribution` check for one consent only. If Q3 gives renewal conditions, add consent attributes or a renewal rule and scenarios GS26 to GS29.
- **Evidence:** `Individual_Contributions/Section_B_Contributors_Arno/CA2_Section_B.md` · baseline A15 · #29

---

## DEC-12: Extend NFR1 to private correspondence and sensitive contributor information 

- **Date:** _27/11/26_
- **Context:** NFR1 only covers internal editorial notes in a provided partner or volunteer view. E5 and R5 also identify private correspondence and sensitive contributor information. Rani reviewed the Section B access matrix and asked for a decision-log entry because the extension changes a requirement (#40, R16).
- **Decision:** Extend NFR1: "If the system provides a partner or volunteer view, the view must not display internal editorial notes. Access to private correspondence and sensitive contributor information must follow the agreed permissions for that production role." The verification also compares access to other information with the agreed role permissions.
- **Reasoning:** The extension keeps the existing restriction and its condition (Q9). It adds no new permission. It only requires access to follow the permissions that Q7 gives.
- **Rejected alternatives:** Keep NFR1 unchanged. Rejected because E5 and R5 would have no requirement. Add fixed rules for each role. Rejected because Q7 is not answered, so this would invent policy.
- **Consequences:** The "Open" cells in the Section B access matrix stay open until Q7. GS25 continues to test internal editorial notes. Add tests for the other information after Q7. The matrix uses "Not by default" for BR7 and E5 (#40).
- **Evidence:** `Individual_Contributions/Section_B_Contributors_Arno/CA2_Section_B.md` (Proposed NFR1 extension, Access and Permission Responsibilities) · #40

---
## DEC-13: Add evidenceLocation to Consent

- **Date:** _27/11/26_
- **Context:** FR5 and US4 require the place where the consent evidence is held. The CA1 Consent attributes (E29) did not include it (#29, R13).
- **Decision:** Add `evidenceLocation` to Consent in the domain model, the CRC cards and the DCD.
- **Reasoning:** FR5 already requires this information. The change corrects the design. It does not change FR5. It also reduces R3 (paper forms kept outside the record).
- **Rejected alternatives:** Keep the evidence location in a free-text note. Rejected because FR5 and GS-scenarios need to check it as a separate detail.
- **Consequences:** CB4 (`recordConsent`) takes the evidence location as an input. The US4 scenarios check all four details.
- **Evidence:** `Diagrams/Domain_Model/domain_Model.puml` · `CA2_Section_B.md` (Consent design) · #29




## Template for new entries
```markdown
## DEC-NN: Title

- **Date:**
- **Context:**
- **Decision:**
- **Reasoning:**
- **Rejected alternatives:**
- **Consequences:**
- **Evidence:** (file path, issue number)
```
