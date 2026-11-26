# Integrated CRC Cards (CA2)

**Board item:** #43 Integrate CRC cards and agree the controller pattern
**Owner:** Arno · **Reviewer:** To be agreed (R13)
**Status:** Proposed. The owners must agree the changes in section 3.

<!-- Language: ASD-STE100 Simplified Technical English. Class names, operation names, requirement IDs and GRASP terms are technical names. They do not change. -->

This file collects the CRC cards from the four sections. Each card stays in the file of its owner. This file gives a list of the cards. It also records the items that the sections must agree. The file `Object_Oriented_Design/GRASP/controller-pattern-decision.md` records the controller pattern.

## 1. Sources

| Section                      | Owner   | Source file                                                                                     | CRC status                                                   |
|------------------------------|---------|-------------------------------------------------------------------------------------------------|--------------------------------------------------------------|
| A – Proposal management      | Rani    | `Individual_Contributions/Implementation_Catalogue/Section_A_Proposal_Rani/CA2_Section_A` (#28) | Done                                                         |
| B – Contributors and consent | Arno    | `.../Section_B_Contributors_Arno/CA2_Section_B.md`                                              | Done                                                         |
| C – Recording and drafts     | Jack    | `.../Section_C_Recording_Jack/CA2_Section_C.md` (#30)                                           | Done. No controller card. The GRASP section is not complete. |
| D – Review and publication   | Tsubasa | `.../Section_D_Review_Tsubasa/CA2_Section D.md`                                                 | Done                                                         |

## 2. List of classes

| Class                                             | Type        | Section that owns it | Used by                         | Notes                                                                 |
|---------------------------------------------------|-------------|----------------------|---------------------------------|-----------------------------------------------------------------------|
| Proposal                                          | Domain      | A                    | B (proposed contributors), UC11 | The latest decision gives the state.                                  |
| Episode                                           | Domain      | A                    | B, C, D, UC11                   | Shared anchor. Creates Contribution. Gives `hasOutstandingConsent()` and `outstandingConsents()`. |
| ProposalDecision                                  | Domain      | A                    |                                 |                                                                       |
| DecisionOutcome                                   | Enumeration | A                    |                                 |                                                                       |
| PartnerOrganisation                               | Domain      | A                    |                                 |                                                                       |
| Contributor                                       | Domain      | B                    | A                               |                                                                       |
| Contribution                                      | Domain      | B                    | Episode, UC11                   | Creates Consent. Tells if consent is outstanding.                     |
| Consent                                           | Domain      | B                    |                                 |                                                                       |
| ConsentForm                                       | Enumeration | B                    |                                 |                                                                       |
| RecordingSession                                  | Domain      | C                    | UC11                            |                                                                       |
| SourceRecording                                   | Domain      | C                    |                                 |                                                                       |
| EquipmentItem                                     | Domain      | C                    |                                 | RecordingSession shows it as a collaborator. It has no card.          |
| Draft                                             | Domain      | C                    | D, UC11                         | Sections C and D both give it responsibilities (see 3.1).             |
| Permission                                        | Domain      | C                    | D, UC11                         |                                                                       |
| DraftReview                                       | Domain      | D                    |                                 |                                                                       |
| ReviewOutcome                                     | Enumeration | D                    |                                 |                                                                       |
| Publication                                       | Domain      | D                    | UC11                            |                                                                       |
| PublicationDateChange                             | Domain      | D                    |                                 |                                                                       |
| PublicationChannel                                | Domain      | D                    |                                 |                                                                       |
| Correction                                        | Domain      | D                    |                                 |                                                                       |
| CorrectionType                                    | Enumeration | D                    |                                 |                                                                       |
| Clock                                             | Interface   | Shared               | A, D                            | One shared interface (see 3.4).                                       |
| ProposalController                                | Controller  | A                    |                                 |                                                                       |
| ContributorConsentController                      | Controller  | B                    |                                 |                                                                       |
| RecordingDraftController                          | Controller  | C                    |                                 | Card agreed in Section C.                                             |
| ReviewPublicationController                       | Controller  | D                    |                                 |                                                                       |
| ProductionOverviewController                      | Controller  | Shared (UC11)        |                                 | Only reads data. The card is in section 4.                            |
| ProposalRepository, PartnerOrganisationRepository | Repository  | A                    |                                 |                                                                       |
| ContributorRepository                             | Repository  | B                    |                                 |                                                                       |
| EpisodeRepository                                 | Repository  | Shared               | B, C                            | Proposed (see 3.6).                                                   |

## 3. Conflicts between sections and changes

| #   | Classes                                     | Conflict                                                             | Proposed change                                                                                                             | Owner who must agree | Done |
|-----|---------------------------------------------|----------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|----------------------|------|
| 3.1 | Draft (C) / Draft (D)                       | Sections C and D both give responsibilities to Draft.                | Make one Draft card. Section C owns it. Add the rows from Section D (review status, blockers) and mark them "used by D".    | Jack, Tsubasa        |      |
| 3.2 | Contribution (B) / Draft or DraftReview (D) | Which class tells if consent is outstanding for BR5 (GS24)?          | Section D asks `Episode.hasOutstandingConsent()`. Section D gets the names from `Episode.outstandingConsents()` (GS24, CO11.2). Episode asks each Contribution. Section D does not use Consent. | Tsubasa              |      |
| 3.3 | Permission (C) / DraftReview (D)            | Which class tells if a permission is outstanding for BR5 (GS4)?      | Section D asks Draft. Draft asks its Permissions. Draft already shows Permission as a collaborator.                         | Jack, Tsubasa        |      |
| 3.4 | Clock (A) / Clock (D)                       | Two sections define Clock.                                           | Use one shared `Clock` interface for all controllers.                                                                       | Rani, Tsubasa        |      |
| 3.5 | Episode (A) / Contribution (B)              | Which class creates a Contribution?                                  | Episode creates Contribution. Rani adds three rows to the Episode card: "create contributions", `hasOutstandingConsent()` and `outstandingConsents()`. | Rani                 |      |
| 3.6 | Episode (A, B, C)                           | Sections B and C must find episodes. Only Proposal has a repository. | Add a shared `EpisodeRepository`. Or, find episodes through Proposal.                                                       | Rani, Jack           |      |
| 3.7 | Section C                                   | Section C has no controller card.                                    | Add a RecordingDraftController card (see controller-pattern-decision.md).                                                   | Jack                 | Done |
| 3.8 | Section C                                   | EquipmentItem is a collaborator, but it has no card.                 | Add a card. Or, make missing equipment an attribute of RecordingSession.                                                    | Jack                 | Done |
| 3.9 | Draft (C) / DraftReview (D)                 | Two operations record the draft status: `recordDraftStatus` (C, OC08) and `recordReview` (D, OC01). OC08 lets a volunteer set any status. This can bypass the editor review (BR3). | OC08 records only the status before review (for example, awaiting review). Only OC01 records review outcomes. | Jack, Tsubasa |      |
| 3.10 | Draft (C) / DraftReview (D)                | DraftReview is for one channel, but `Draft.status` has one value for all channels. | Calculate the release status for each channel from the DraftReview records. Or, record that one review covers all channels. | Jack, Tsubasa |      |
| 3.11 | ReviewPublicationController (D)            | Section D rejects repositories. Proposed DEC-10 uses repositories to find and save objects. | Section D uses repositories to find drafts and publications. Or, DEC-10 records the exception. | Tsubasa, All |      |
| 3.12 | Domain model (all sections)                | The domain model does not agree with the contracts. Examples: no `Consent.evidenceLocation`, no `PublicationDateChange`, no `Publication.status`, no `EquipmentItem`. | Each owner adds the attributes and classes that their contracts use. Then the group updates the domain model. | All |      |

## 4. New card: ProductionOverviewController (design class)

| Responsibilities                                                                                    | Collaborators                                                       |
|-----------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
| Receive the UC11 system operations: `viewProductionOverview`, `viewDraftBlockers` (CO11.1, CO11.2). | –                                                                   |
| Collect each overview category. Ask the class that keeps the data.                                  | Proposal, RecordingSession, Episode, Draft, Permission, Publication |
| Find the objects for the overview.                                                                  | Repositories                                                        |
| Do not create, change or save data. CO11.1 and CO11.2 have no postconditions.                       | –                                                                   |

## 5. Location of the cards

The final cards stay in the file of each section. This prevents different versions of a card. After the group agrees the changes in section 3, each owner changes their own file. Then, the owner puts a tick in the "Done" column.
