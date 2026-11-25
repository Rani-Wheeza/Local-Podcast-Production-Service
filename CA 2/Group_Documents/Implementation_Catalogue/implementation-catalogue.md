# Prioritised Implementation Catalogue (CA2)

**Scenario:** 29 Local Podcast Production Service (Kerry Community Media Collective)
**Board item:** #9 Create prioritised implementation catalogue
**Status:** Agreed. UC2 selected by the group as the main use case for detailed design (DEC-09).

## 1. Purpose

This catalogue records which use cases the group designs, in what order and to what depth, and why. The lecturer limited detailed design to one or two use cases (reconciliation record L6). The group agreed to take **UC2 Record a proposal decision** through full detailed design, with UC8 second if time allows (DEC-09).

## 2. Design depth

| Level | What it includes |
|---|---|
| **Full detailed design** | Detailed use case, Gherkin, SSD, operation contracts, CRC cards, GRASP justification, object-interaction diagrams, design class diagram |
| **Second (if time allows)** | As above, started only once the first is complete |
| **Analysis and behaviour** | Requirements review, Gherkin and, where produced, SSDs and contracts. Kept as analysis evidence; no interaction diagrams |

## 3. Catalogue

Priority follows the requirements' MoSCoW priority in the baseline. Order reflects value, dependency and risk.

| Order | Use case | Section | Priority | Business value | Depends on | Design depth |
|---|---|---|---|---|---|---|
| 1 | **UC2 Record a proposal decision** | A | Must | Stops an encouraging discussion being mistaken for approval: the scenario's clearest problem (P2, BR1) | UC1 (a proposal exists) | **Full detailed design** (agreed, DEC-09) |
| 2 | **UC8 Review a draft** | D | Must | Shows whether a finished draft is approved, awaiting review or blocked, and why (P6, BR5, DEC-05) | UC4, UC6, UC7 (consent, drafts, permissions) | **Second, if time allows** (agreed, DEC-09) |
| 3 | UC1 Record a programme or series proposal | A | Must | Gives every proposal a single starting record, however incomplete (P1) | – | Analysis and behaviour |
| 4 | UC11 View the production overview | Shared | Must | One place to see what needs action and what blocks publication (P1, P6) | Reads all other use cases | Analysis and behaviour |
| 5 | UC4 Record contributor consent | B | Must | Consent in three forms recorded in one place (P4) | UC3 | Analysis and behaviour |
| 6 | UC7 Record permissions for material | C | Must | Outstanding permissions visible before review (P6) | UC6 | Analysis and behaviour |
| 7 | UC6 Record source recordings and drafts | C | Must | The correct source and draft can be identified (P3) | UC5 | Analysis and behaviour |
| 8 | UC3 Maintain contributor and episode details | B | Must | Roles and agreed credit kept per episode | UC1 | Analysis and behaviour |
| 9 | UC5 Record a recording session | C | Should | Missing equipment noticed before a session (P8) | UC1 | Analysis and behaviour |
| 10 | UC9 Record or change a publication date | D | Should | A realistic date, with reasons for changes (P5) | UC8 | Analysis and behaviour |
| 11 | UC10 Record a correction or replacement | D | Should | Metadata corrections told apart from new audio (P7) | UC9 | Analysis and behaviour |

## 4. Why the group chose UC2

- **Clearest problem:** partners treating discussion as approval is the scenario's most direct complaint (BR1).
- **Behavioural richness:** four outcomes (BR2) and controlled failures give the interaction diagrams genuine alternatives.
- **Readiness:** detailed use case, SSD, contract CO4, CRC cards, GRASP and seven Gherkin scenarios already exist, so the remaining time goes into depth.
- **Manageable scope:** four to five classes (Proposal, ProposalDecision, DecisionOutcome, ProposalController, ProposalRepository) can be designed in full.
- **Low dependency:** needs only UC1, so it can be designed without waiting for other sections.
- **Group agreement:** proposed independently by two members and agreed by the whole group (DEC-09).

## 5. Why UC8 second

UC8 tackles the blocked-draft problem (BR5, DEC-05) and connects Consent (B), Permission (C) and DraftReview (D), so it would show how the sections integrate. It depends on three other use cases and more open questions (Q5, Q6), so it is designed only once UC2 is complete.

## 6. Work allocation for UC2

Every member contributes to the selected use case.

| Work | Board item | Owner |
|---|---|---|
| Interaction diagram – main flow (accepted with conditions) | UC2 interaction diagram, main flow | Rani |
| Interaction diagrams – alternative outcomes and failures (rejected, returned, held; already decided) | UC2 interaction diagrams, alternatives | Arno |
| Design class diagram for UC2 | #44 | Jack |
| Consistency check: DCD, interaction diagrams and contracts | #45 | Tsubasa |
| Integrate CRC cards and agree the controller pattern | #43 | Arno |
| UC8 detailed design, if time allows | new card | Tsubasa (lead) |


## 7. Risks and dependencies

| Item | Effect | Response |
|---|---|---|
| Q2 (significant change) open | UC2 cannot reopen an accepted or rejected proposal | Designed as a controlled failure (CO4) |
| Q5 (approval authority) open | The design cannot check who may decide | The editor is recorded, not checked |
| DEC-07, DEC-08 | FR1 proposer and `ProposalDecision.note` | Both are reflected in the UC2 design once agreed |
| Time | UC8 may not be reached | UC2 alone satisfies the lecturer's instruction (L6) |
