# Review: Section B design, UC2 interaction diagrams and #43 integration

**Author:** Arno
**Related issues:** #12, #29, #37, #40, #43
**Commit:**c46fd78 

#### Commit Link (https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/commit/c46fd78db7145885c88dafd3b42c75b8a055cc0a)


## What is done

| Item                                                                                                               | Issue | File                                                                                                  |
|--------------------------------------------------------------------------------------------------------------------|-------|-------------------------------------------------------------------------------------------------------|
| CRC cards for Contributor, Contribution, Consent, ConsentForm, ContributorConsentController, ContributorRepository | #29   | `Individual_Contributions/Implementation_Catalogue/Section_B_Contributors_Arno/CRC_Cards_Template.md` |
| GRASP justification, rejected alternatives, operation-to-responsibility map                                        | #29   | `.../Section_B_Contributors_Arno/GRASP_Justification_Template.md`                                     |
| Access and permission responsibilities (agreed rules only)                                                         | #40   | `.../Section_B_Contributors_Arno/Access_and_Permissions_Template.md`                                  |
| Outstanding questions for the client                                                                               | #12   | `.../Section_B_Contributors_Arno/Outstanding_Questions_Template.md`                                   |
| UC2 interaction diagrams: rejected, returned, held, already decided                                                | #37   | `Diagrams/Object_Interaction_Diagrams/OID_UC2_*.puml` and `.png`                                      |
| Integrated CRC card index and cross-section changes                                                                | #43   | `Object_Oriented_Design/CRC_Cards/integrated-crc-cards.md`                                            |
| Controller pattern decision (proposed DEC-10)                                                                      | #43   | `Object_Oriented_Design/GRASP/controller-pattern-decision.md`                                         |

## Not done yet

- #22 SSDs and operation contracts for UC3 and UC4.
- #16 Change the Section B scenario numbers from GS6–GS11 to GS20–GS25 (DEC-06). Remove the comment marks from the feature file. Copy the feature file to `Requirements_and_Gherkin/Feature_Files/`.
- Send the client questions (R14) to the lecturer.

## How to review

1. Find the items with your name in the table below.
2. Write one comment for each item. Start the comment with the item number, for example "R6: agreed".
3. Use one of these results: **Agreed**, **Agreed with changes** (write the change), or **Not agreed** (write the reason).
4. Put a tick in the box when the item is closed.

## Review items

| #   | Reviewer       | Item                                                                                                                                                                | Where                                            | Issue    |
|-----|----------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------|----------|
| R1  | Rani           | Add the row "Create and keep its contributions" to the Episode card. Episode creates Contribution.                                                                  | CRC cards, Episode rows; #43 change 3.5          | #29, #43 |
| R2  | Rani           | Add the row `hasOutstandingConsent()` to the Episode card.                                                                                                          | CRC cards, Episode rows; #43 changes 3.2 and 3.5 | #29, #43 |
| R3  | Rani           | Make sure that the UC2 interaction diagrams agree with CO4 and the Section A CRC cards. Make sure that `leavesProposalOpen()` and the "refused" result are correct. | `OID_UC2_*.puml`                                 | #37      |
| R4  | Rani, @Jack    | Do we add a shared `EpisodeRepository`, or find episodes through Proposal?                                                                                          | #43 change 3.6                                   | #43      |
| R5  | Rani, @Tsubasa | Use one shared `Clock` interface for all controllers.                                                                                                               | #43 change 3.4                                   | #43      |
| R6  | Tsubasa        | Section D examines consent through `Episode.hasOutstandingConsent()`. Section D does not use Contribution.                                                          | GRASP, Low Coupling; #43 change 3.2              | #29, #43 |
| R7  | Tsubasa        | The editor can see outstanding consent for the draft review (BR5, GS24).                                                                                            | Access matrix, row "Outstanding consent"         | #40      |
| R8  | Jack, Tsubasa  | Make one Draft card. Section C owns it. Add the Section D rows to it.                                                                                               | #43 change 3.1                                   | #43      |
| R9  | Jack, Tsubasa  | Section D asks Draft for outstanding permissions. Draft asks its Permissions.                                                                                       | #43 change 3.3                                   | #43      |
| R10 | Jack           | Agree the controller name RecordingDraftController. Add its card.                                                                                                   | #43 change 3.7; controller pattern table         | #43      |
| R11 | Jack           | Add an EquipmentItem card, or make missing equipment an attribute of RecordingSession.                                                                              | #43 change 3.8                                   | #43      |
| R12 | All            | Agree DEC-10: one controller for each section, plus a read-only ProductionOverviewController for UC11.                                                              | `controller-pattern-decision.md`                 | #43      |
| R13 | Rani           | Do a full review of the Section B CRC cards and GRASP justification. Use the Definition of Done.                                                                    | CRC and GRASP files                              | #29      |
| R14 | All            | Agree the list of client questions before Arno sends it to the lecturer.                                                                                            | `Outstanding_Questions_Template.md`              | #12      |

## Checklist

- [ ] R1 Episode creates Contribution
- [ ] R2 Episode.hasOutstandingConsent()
- [ ] R3 UC2 interaction diagrams agree with CO4
- [ ] R4 EpisodeRepository
- [ ] R5 Shared Clock
- [ ] R6 Section D examines consent through Episode
- [ ] R7 Editor can see outstanding consent
- [ ] R8 One Draft card
- [ ] R9 Permission check through Draft
- [ ] R10 Section C controller
- [ ] R11 EquipmentItem
- [ ] R12 DEC-10 controller pattern
- [ ] R13 Full peer review of Section B
- [ ] R14 Client questions

## After the review

- Record each agreed decision in the decision log.
- Each owner changes their own section file.
- Close #29, #37, #40 and #43 when all of their items are closed.
