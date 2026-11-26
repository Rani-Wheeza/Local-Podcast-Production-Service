# Section A: Proposal management

Member 1: Rani Wheeza
CA1 source: Rani Wheeza's analysis dossier
Board item: #11 Review proposal-related requirements and use cases

This section reviews the CA1 analysis for proposals and proposal decisions against the Scenario 29 text and the revised analysis baseline. Evidence is cited as **Sc** (Scenario 29 document, with the section heading) or by CA1/baseline identifier. Planned scenarios belong to #15 and will be in `Section_A_Proposal.feature` (GS10–GS19).

## Problem statement

Proposals arrive in very different states: some are complete, others begin as a short conversation or email (Sc: Programme proposals and approval). A series may hold several planned episodes under one proposal. Partners sometimes treat an encouraging discussion as approval when no decision has been recorded, and approval may come with conditions (Sc: Programme proposals and approval). The production coordinator needs to see proposals awaiting decisions (Sc: Information and access).

The outcomes this section serves are a single starting record for every proposal and a clear, recorded decision so that discussion is not mistaken for approval (CA1 P1, P2; goals G1, G13).

## Scope of this section

### In this section

| ID | Name | Primary actor | Priority |
|---|---|---|---|
| UC1 | Record a programme or series proposal. Details not yet known are recorded as not yet known | Production coordinator | Must |
| UC2 | Record a proposal decision | Proposal editor | Must |

S1 is the scope item for both use cases.

### Outside this section

| Item | Owner | Why it is outside |
|---|---|---|
| Contributor details, roles and consent | Section B | UC1 records only the *proposed* contributors named in a proposal. Roles, credit and consent are UC3 and UC4. |
| Production overview (proposals with no decision, held proposals) | Shared (UC11) | GS2 already tests the distinction. Section A records the decisions the overview reads. |
| Reconsidering an approved proposal after a significant change | Deferred (G2, RD-18) | "Significant" is undefined (Q2). |
| Who may approve each programme type | Open (Q5) | The proposal editor is a role; no approval authority is assumed. |

## Requirements review

### Review method

Each requirement, rule and assumption was checked against the scenario text for consistency, clarity, verifiability and traceability, without introducing rules the scenario does not state.

### Functional requirements

| ID | CA1 statement (summary) | Decision | Reason | Evidence |
|---|---|---|---|---|
| FR1 | Staff can record a programme proposal with subject, intended audience, format, expected duration, proposed contributors and preferred publication period; unknown details recorded as not yet known. | **Update.** Add who proposed it (staff member, volunteer or partner organisation). Add Gherkin. | The scenario says programmes may be proposed by staff, volunteers or partners, and partners want progress on their proposals. The domain model already holds this (`proposedBy`, *PartnerOrganisation proposes Proposal*), but FR1 does not ask for it, so the attribute has no requirement behind it. No CA1 scenario covers FR1. | Sc: Context; Sc: Information and access; baseline 9.1, 9.2 |
| FR2 | Staff can record a series proposal with its planned episodes. | **Keep.** Add Gherkin. | Stated in the scenario. No CA1 scenario covers it. | Sc: Programme proposals and approval; A10 |
| FR3 | An editor can record a decision as accepted, rejected, returned for revision or held, with date, person and any conditions. | **Keep.** Add Gherkin for rejected, returned and held. | GS1 covers accepted with a condition only. US2 accepts all four outcomes. | Sc: Programme proposals and approval; US2; GS1 |

### Business rules

| ID | CA1 statement (summary) | Decision | Reason | Evidence |
|---|---|---|---|---|
| BR1 | A proposal is not approved until a decision has been recorded. | **Keep.** | The scenario's central proposal problem. GS2 tests it at the overview. | Sc: Programme proposals and approval; GS2 |
| BR2 | A proposal decision is accepted, rejected, returned for revision or held. | **Keep.** | Stated in the scenario. Planned scenarios record one outcome each. | Sc: Programme proposals and approval |

Approval conditions (shortening, confirming a contributor, changing location, further review) are recorded with the decision. The scenario does not say whether conditions are tracked to completion, so no rule is added.

### Assumptions

| ID | CA1 statement (summary) | Decision | Reason |
|---|---|---|---|
| A5 | Staff enter information on behalf of partners and contributors. | **Keep as assumption.** | Direct partner access is unresolved (Q9). |
| A6 | The production coordinator records proposals. | **Keep as assumption.** | The scenario does not say who records proposals (Q10). |
| A10 | A series is a proposal with several planned episodes. | **Keep as assumption.** | Matches the scenario wording; no Series class (D5, RD-15). |
| A13 | The overview lists held proposals separately from proposals with no decision. | **Keep as assumption.** | An inference; GS2 relies on it. |

### Open questions

| ID | Question | Decision | Effect on Section A |
|---|---|---|---|
| Q1 | What information is required before a proposal can receive a decision? | Carry forward. | UC2 does not block an incomplete proposal (UC2 exception E1). No scenario tests a minimum. |
| Q2 | What counts as a significant change after approval? | Carry forward (RD-18). | No scenario reopens an accepted or rejected proposal. |
| Q5 | Who may approve each programme type and channel? | Carry forward. | Scenarios say "proposal editor" only. |
| Q9 | Do partners use the system directly? | Carry forward. | Scenarios have staff record partner proposals (A5). |
| Q10 | Who records proposals? | Carry forward. | Scenarios use the production coordinator (A6). |
| Q13 | Can the proposal editor and authorised editor be the same person? | Carry forward. | No effect on Section A scenarios. |

## Use cases

| ID | Decision | Reason |
|---|---|---|
| UC1 | **Keep. Add detailed specification.** | CA1 has only a one-line description. SSDs (#21) need main and alternative flows. |
| UC2 | **Keep. Convert to two-column format.** | CA1 specification is complete (dossier 6.5). Converted to the group's actor/system format (RD-11) so it maps onto SSD messages. |

### UC1 Record a programme or series proposal

| Field | Content |
|---|---|
| Primary actor | Production coordinator (A6) |
| Goal | Record a proposal, however complete, so it is not lost or treated as decided |
| Preconditions | None. The proposal may come from staff, a volunteer or a partner organisation |
| Trigger | A proposal arrives as a form, email or conversation |
| Related | FR1, FR2, S1, G13, A5, A6, A10 |

**Main success flow**

| Actor | System |
|---|---|
| 1. Starts a new proposal and enters who proposed it | |
| | 2. Shows the proposal fields |
| 3. Enters the known details: subject, intended audience, format, expected duration, proposed contributors, preferred publication period | |
| 4. Enters the planned episode | |
| | 5. Records the proposal and episode; marks any detail not entered as not yet known |
| | 6. Shows the proposal as having no recorded decision |

**Alternative flows**

| Flow | Actor | System |
|---|---|---|
| 1a Partner proposal | Selects the partner organisation | Links the proposal to that partner |
| 3a Only a subject is known | Enters the subject only | Step 5: all other details shown as not yet known |
| 4a Series | Enters several planned episodes | Links every episode to the one proposal |
| 6a Later details | Adds a detail that was not yet known | Replaces "not yet known" with the value |

**Postconditions:** The proposal exists with at least one episode and no recorded decision. It is visible to the production overview as awaiting a decision (BR1).

### UC2 Record a proposal decision

| Field | Content |
|---|---|
| Primary actor | Proposal editor (provisional) |
| Goal | Record the editor's actual decision, with any conditions, so that discussion is not mistaken for approval |
| Preconditions | The proposal is recorded (UC1). It has no decision, or its last decision was returned for revision or held |
| Trigger | The editor has reached a decision, outside the system |
| Related | FR3, FR12, S1, G1, BR1, BR2 |

**Main success flow (accepted)**

| Actor | System |
|---|---|
| 1. Selects the proposal | |
| | 2. Shows its details, earlier decisions and earlier conditions |
| 3. Records the outcome "accepted" | |
| 4. Records any conditions | |
| | 5. Records the decision with the date, the editor and the conditions |
| | 6. Shows the proposal as accepted with its conditions |

**Alternative and exception flows**

| Flow | Actor | System |
|---|---|---|
| 3a Rejected | Records "rejected", optionally with a reason | Continue at 5 |
| 3b Returned for revision | Records "returned for revision" and what needs revising | Continue at 5; the proposal stays open for a later decision |
| 3c Held | Records "held for future consideration", optionally when to look again | Continue at 5; shown as held, not as awaiting a decision (A13) |
| E1 Incomplete proposal | Decides anyway | Does not block the decision (Q1); unknown details stay not yet known |
| E2 Earlier decision was returned or held | Records a new decision | Keeps the earlier decision on record |
| E3 Abandons | Leaves without saving | No decision recorded; the proposal still shows no decision |

**Postconditions:** The decision, date, editor and conditions are kept and earlier decisions remain. A proposal with a recorded decision no longer shows as having none.

## Planned Gherkin coverage (for #15)

GS1 and GS2 keep their CA1 numbers. New scenarios use GS10–GS19.

| Scenario | Type | Covers | Requirement | Use case | Rule |
|---|---|---|---|---|---|
| GS1 Proposal accepted with a condition | Success | Kept from CA1 | FR3 | UC2 | BR1, BR2 |
| GS2 No decision vs held vs approved | Boundary | Kept from CA1 | FR3, FR12 | UC11 | BR1 |
| GS10 Partner proposal recorded with full details | Success | Proposer and all FR1 details kept | FR1 | UC1 | – |
| GS11 Proposal with only a subject | Boundary | Missing details shown as not yet known; no decision | FR1 | UC1 | BR1 |
| GS12 Series with three planned episodes | Success | All episodes linked to one proposal | FR2 | UC1 | A10 |
| GS13 Proposal rejected | Alternative | Outcome, person, date kept | FR3 | UC2 | BR2 |
| GS14 Returned for revision, then accepted | Alternative | Both decisions kept; latest shown | FR3 | UC2 | BR2 |
| GS15 Proposal held for future consideration | Alternative | Shown as held, not approved | FR3 | UC2 | BR2, A13 |
| GS16 Editor abandons recording a decision | Failure | Proposal still shows no decision | FR3 | UC2 | BR1 |

## Review decisions and limits

- **Requirement wording:** FR1 changes to include the proposer (needs group agreement and a decision-log entry). FR2 and FR3 are unchanged; the scenarios add coverage.
- **Identifiers:** GS1 and GS2 keep their CA1 numbers.
- **Incomplete proposals:** No scenario rejects a decision on an incomplete proposal, because Q1 is open.
- **Reconsideration:** No scenario reopens an accepted or rejected proposal (Q2, RD-18).
- **Conditions:** Conditions are recorded with the decision. Whether they are tracked to completion is not stated, so no scenario tests it.
- **Illustrative data:** Partner names, titles and dates are test data.

## Dependencies

| Dependency | Effect |
|---|---|
| FR1 update | The group must agree adding the proposer to FR1 before the baseline is changed (proposed DEC-07). |
| Q1, Q2, Q5 | Scenarios must not treat these as rules until answered. |
| Section B | Proposed contributors named in UC1 are the same Contributor class Section B maintains; names must match. |
| UC11 (shared) | The overview depends on decisions recorded in UC2. GS2 stays with UC11. |
| Scenario numbers | GS10–GS19 as agreed in baseline Section 7. |

## System sequence diagrams (#21)

| Use case | Diagram | System operations |
|---|---|---|
| UC1 | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC1_RecordProposal.puml` | `recordProposal`, `addPlannedEpisode`, `updateProposalDetails` |
| UC2 | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC2_RecordDecision.puml` | `selectProposal` (query), `recordDecision` |

`selectProposal` only returns information and changes nothing, so it has no contract.

## Operation contracts (#21)

### CO1: recordProposal

| Item | Content |
|---|---|
| Operation | `recordProposal(proposer, subject, details)` |
| Cross-references | UC1, FR1, FR2, BR1, A6, DEC-07 (proposed) · GS10, GS11 |
| Preconditions | The user holds a production role that records proposals (A6). |
| Postconditions | A `Proposal` instance `p` was created. `p.subject` was set. Each detail given (intended audience, format, expected duration, preferred publication period) was set; each detail not given was marked not yet known. If the proposer is a partner organisation, `p` was associated with that `PartnerOrganisation` (created if not already recorded); otherwise `p.proposedBy` was set to the staff member or volunteer. `p` was associated with each proposed `Contributor`. No `ProposalDecision` was created, so `p` shows as having no recorded decision (BR1). |
| Controlled failures | Subject missing: nothing is created and the subject is requested. |

### CO2: addPlannedEpisode

| Item | Content |
|---|---|
| Operation | `addPlannedEpisode(proposal, title, description)` |
| Cross-references | UC1, FR1, FR2, A10 · GS12 |
| Preconditions | `proposal` exists. |
| Postconditions | An `Episode` instance `e` was created. `e.title` and, if given, `e.description` were set. `e` was associated with `proposal` (*Proposal plans Episode*). |
| Controlled failures | Proposal not found: nothing is created. |

### CO3: updateProposalDetails

| Item | Content |
|---|---|
| Operation | `updateProposalDetails(proposal, details)` |
| Cross-references | UC1 (6a), FR1 · GS11 |
| Preconditions | `proposal` exists. |
| Postconditions | Each detail given replaced its previous value or "not yet known". Recorded decisions were not changed. |
| Controlled failures | Proposal not found: nothing changes. |
| Note | Changing an accepted proposal does not trigger reconsideration, because what counts as a significant change is open (Q2, RD-18). |

### CO4: recordDecision

| Item | Content |
|---|---|
| Operation | `recordDecision(proposal, outcome, conditions, note)` |
| Cross-references | UC2, FR3, BR1, BR2, A13 · GS1, GS2, GS13–GS16 |
| Preconditions | `proposal` exists. It has no recorded decision, or its latest decision is returned for revision or held. The user acts as proposal editor (who may decide each programme type is open, Q5). |
| Postconditions | A `ProposalDecision` instance `d` was created. `d.outcome` was set to accepted, rejected, returned for revision or held (BR2). `d.decisionDate` was set to the current date and `d.decidedBy` to the editor. `d.conditions` and `d.note` were set if given. `d` was associated with `proposal` (*Proposal receives ProposalDecision*). Earlier decisions were not changed. The proposal's displayed state follows its latest decision; it is no longer shown as having no recorded decision. |
| Controlled failures | Latest decision is accepted or rejected: no decision is created (reopening depends on Q2). Outcome not one of the four in BR2: no decision is created. |

### Design notes from the SSDs and contracts

- **Proposal state is derived, not stored.** `Proposal` has no status attribute; "no recorded decision", "accepted", "held" and so on come from its latest `ProposalDecision`. This keeps one source of truth (BR1).
- **Missing attribute: `ProposalDecision.note`.** UC2 records a reason for rejection, what needs revising, or when to look again (GS13, GS14, GS15), but the domain model only has `conditions`. Conditions apply to an acceptance, so they are not the right place for these. Proposed: add `note` to `ProposalDecision` (needs a decision-log entry and a domain model update, #8).
- **Subject is the minimum to record a proposal.** Inferred from UC1 3a and GS11 (a proposal with only a subject). This is a design assumption for group agreement, not a scenario rule.
- **Partner organisations** are created when first named, because no use case records them separately.
- **Proposed contributors** link to the `Contributor` class maintained by Section B. Names must match Section B's records.

## CRC cards (#28)

The CRC cards assign the work in the Section A operation contracts (CO1–CO4) to classes. Domain classes come from the refined domain model (#8). Three design classes are added: a use-case controller and two repositories. They are justified in the GRASP section.

### Proposal

| Responsibilities | Collaborators |
|---|---|
| Know its subject and details, marking each detail not yet given as not yet known (FR1) | – |
| Know who proposed it: a staff member or volunteer (`proposedBy`) or a partner organisation (DEC-07) | PartnerOrganisation |
| Know its proposed contributors | Contributor (Section B) |
| Update a detail that was not yet known (CO3) | – |
| Create and hold its planned episodes (CO2, FR2) | Episode |
| Create and hold its decisions, keeping earlier ones (CO4) | ProposalDecision |
| Check whether a new decision may be recorded: none yet, or latest is returned or held (CO4 failure) | ProposalDecision |
| Answer its current state from its latest decision: awaiting a decision, held, accepted, rejected (BR1, A13) | ProposalDecision |

### Episode

| Responsibilities | Collaborators |
|---|---|
| Know its title and description | – |
| Know the proposal that plans it | Proposal |
| Create and keep its contributions, each with its own role and credit (Creator; FR4, GS20) | Contribution, Contributor (Section B) |
| Tell whether consent is outstanding for any of its contributions: `hasOutstandingConsent()` (Information Expert; BR5, GS24) | Contribution (Section B) |
| Give the contributions with no consent: `outstandingConsents()`, so the draft review and overview can name each contributor (BR5, GS24, CO11.2) | Contribution (Section B) |
| Be the shared anchor for later work: sessions and drafts link to it | RecordingSession (C), Draft (C) |

### ProposalDecision

| Responsibilities | Collaborators |
|---|---|
| Know its outcome, decision date, editor, conditions and note (FR3, DEC-08) | DecisionOutcome |
| Know whether its outcome leaves the proposal open for another decision (returned or held) | DecisionOutcome |

### DecisionOutcome (enumeration)

| Responsibilities | Collaborators |
|---|---|
| Define the only four outcomes: accepted, rejected, returned for revision, held for future consideration (BR2) | – |

### PartnerOrganisation

| Responsibilities | Collaborators |
|---|---|
| Know its name | – |
| Know the proposals it has made, for progress information | Proposal |

### ProposalController (design class)

| Responsibilities | Collaborators |
|---|---|
| Receive the Section A system operations: `recordProposal`, `addPlannedEpisode`, `updateProposalDetails`, `selectProposal`, `recordDecision` | – |
| Create a new Proposal from the data in `recordProposal` | Proposal |
| Find proposals and partners, and save new ones | ProposalRepository, PartnerOrganisationRepository |
| Pass the editor and today's date into `recordDecision` | Clock |
| Delegate every rule to the domain objects; make no decisions itself | Proposal |

### ProposalRepository and PartnerOrganisationRepository (design classes)

| Responsibilities | Collaborators |
|---|---|
| Store and find proposals by identifier | Proposal |
| Find a partner by name, or store a new one when first named (CO1) | PartnerOrganisation |

### Clock (interface)

| Responsibilities | Collaborators |
|---|---|
| Provide the current date for `decisionDate` | – |

## GRASP justification (#32)

| Principle | Assignment | Reason |
|---|---|---|
| **Controller** | `ProposalController` receives all five Section A system operations. | A use-case controller for UC1 and UC2. It keeps the user interface out of the domain, and it covers one section only, so it does not become a single controller for the whole system. Each section has its own controller. |
| **Creator** | `Proposal` creates `Episode` and `ProposalDecision`. | Proposal contains its episodes (*plans*, 1..\*) and records its decisions (*receives*). Both are created only in the context of one proposal. |
| **Creator** | `ProposalController` creates `Proposal`. | No domain object contains proposals, and the controller holds the initialising data passed in `recordProposal`. |
| **Information Expert** | `Proposal` decides whether a new decision may be recorded and what its current state is. | Proposal holds its decision history, which is the information these answers need. |
| **Information Expert** | `ProposalDecision` knows whether its outcome leaves the proposal open. | The outcome is its own data. |
| **High Cohesion** | The controller only receives, finds, delegates and saves. Rules stay in `Proposal` and `ProposalDecision`. | Each class has one focused purpose; the controller does not accumulate business rules. |
| **Low Coupling** | The controller depends on `Proposal` and the repository interfaces, not on `Episode` or `ProposalDecision` directly. | Changes inside a proposal do not ripple out to the controller. |
| **Pure Fabrication** | `ProposalRepository` and `PartnerOrganisationRepository`. | Storing and finding objects is not a responsibility of any domain concept. Giving it to `Proposal` would mix persistence into domain logic. |
| **Protected Variations** | `Clock` interface for the current date; `DecisionOutcome` enumeration for outcomes. | The date source can be replaced by a fixed clock in tests. The enumeration keeps invalid outcomes out (BR2) and isolates the list if the collective adds one. |

### Rejected alternatives

| Alternative | Why rejected |
|---|---|
| A stored `status` attribute on `Proposal` | The state would duplicate what the latest decision already says, and the two could disagree. Deriving it keeps one source of truth (BR1, A13). |
| The State pattern for proposal states | Decisions are a recorded history, not a lifecycle of behaviour changes. A derived state is simpler and enough. |
| One controller for the whole system | It would collect every system operation and become a God controller, which the brief warns against. |
| `ProposalController` checking the decision rule | It would move Proposal's knowledge into the controller and lower cohesion. |

### Operation-to-responsibility map

This map feeds the Section A object-interaction diagram (#36).

| System operation | Controller | Expert / creator | Objects created or changed |
|---|---|---|---|
| `recordProposal(proposer, subject, details)` | ProposalController | ProposalController (creates); PartnerOrganisationRepository (find or store partner) | new Proposal; new PartnerOrganisation if first named |
| `addPlannedEpisode(proposal, title, description)` | ProposalController | Proposal (creates) | new Episode |
| `updateProposalDetails(proposal, details)` | ProposalController | Proposal | Proposal details changed |
| `selectProposal(proposal)` | ProposalController | Proposal | none (query) |
| `recordDecision(proposal, outcome, conditions, note)` | ProposalController | Proposal (checks rule, creates) | new ProposalDecision |