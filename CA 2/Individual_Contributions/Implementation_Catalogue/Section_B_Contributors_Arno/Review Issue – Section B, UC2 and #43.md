# Review record: Section B design, UC2 interaction diagrams and #43 integration

**Author:** Arno (@JanArnoCoetzer)  
**Related issues:** #12, #16, #22, #29, #37, #40, #43, #44  
**Review issue:** #50  


## What is done

| Item                                                                                                                  | Issue    | Location                                                            |
|-----------------------------------------------------------------------------------------------------------------------|----------|---------------------------------------------------------------------|
| Requirements review for FR4, FR5, NFR1, BR5, BR6, BR7, C5, A2, A5 and A6                                              | #12      | `CA2_Section_B.md#requirements-review`                              |
| Gherkin scenarios GS20 to GS25 (DEC-06)                                                                               | #16      | `Section_B_Contributors_Arno/Features/contributors-consent.feature` |
| CRC cards for Contributor, Contribution, Consent, ConsentForm, ContributorConsentController and ContributorRepository | #29      | `CA2_Section_B.md#crc-cards`                                        |
| GRASP justification, rejected alternatives and operation-to-responsibility map                                        | #29, #33 | `CA2_Section_B.md#grasp-justification`                              |
| Access and permission responsibilities (agreed rules only)                                                            | #40      | `CA2_Section_B.md#access-and-permission-responsibilities`           |
| Outstanding questions for the client                                                                                  | #12      | `CA2_Section_B.md#outstanding-questions`                            |
| UC2 interaction diagrams: rejected, returned, held and already decided                                                | #37      | `Diagrams/Object_Interaction_Diagrams/OID_UC2_*.puml` and `.png`    |
| Integrated CRC card index and cross-section changes 3.1 to 3.8                                                        | #43      | `Object_Oriented_Design/CRC_Cards/integrated-crc-cards.md`          |
| Controller pattern decision (proposed DEC-10)                                                                         | #43      | `Object_Oriented_Design/GRASP/controller-pattern-decision.md`       |

All Section B paths start at `Individual_Contributions/Implementation_Catalogue/Section_B_Contributors_Arno/`.

## Not done yet

- #22: SSDs for UC3 and UC4, and operation contracts CB1 to CB3.
- #20: copy the Section B feature file to `Requirements_and_Gherkin/Feature_Files/`.
- New issue: add `evidenceLocation` to Consent in the domain model.


## How to review

1. Find the items with your name in the table below.
2. Write one comment for each item in the issue in the "Issue" column. Start the comment with the item number, for example "R6: agreed".
3. Use one of these results: **Agreed**, **Agreed with changes** (write the change) or **Not agreed** (write the reason).
4. Put a tick in the checklist when the item is closed.

## Review items

| #   | Reviewer                      | Item                                                                                                                                                                                   | Where                                                  | Issue              |
|-----|-------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------|--------------------|
| R1  | @Rani-Wheeza                  | Add the row "Create and keep its contributions" to the Episode card. Episode creates Contribution.                                                                                     | CRC Cards, Episode rows; #43 change 3.5                | #29, #43, #28      |
| R2  | @Rani-Wheeza                  | Add the row `hasOutstandingConsent()` to the Episode card.                                                                                                                             | CRC Cards, Episode rows; #43 changes 3.2 and 3.5       | #29, #43, #28      |
| R3  | @Rani-Wheeza                  | Make sure that the UC2 interaction diagrams agree with CO4, the Section A CRC cards and the UC2 main flow. Make sure that `leavesProposalOpen()` and the "refused" result are correct. | `OID_UC2_*.puml`                                       | #37, #36, #21      |
| R4  | @Rani-Wheeza, @Jack-O-Mahoney | Do we add a shared `EpisodeRepository`, or find episodes through Proposal?                                                                                                             | #43 change 3.6                                         | #43, #28           |
| R5  | @Rani-Wheeza, @TsubasaHMTU    | Use one shared `Clock` interface for all controllers.                                                                                                                                  | #43 change 3.4                                         | #43, #21, #24      |
| R6  | @TsubasaHMTU                  | Section D examines consent through `Episode.hasOutstandingConsent()`. Section D does not use Contribution.                                                                             | GRASP Justification, Low Coupling; #43 change 3.2      | #29, #43, #24, #31 |
| R7  | @TsubasaHMTU                  | The editor can see outstanding consent for the draft review (BR5, GS24).                                                                                                               | Access matrix, row "Outstanding consent"               | #40                |
| R8  | @Jack-O-Mahoney, @TsubasaHMTU | Make one Draft card. Section C owns it. Add the Section D rows to it.                                                                                                                  | #43 change 3.1                                         | #43, #30           |
| R9  | @Jack-O-Mahoney, @TsubasaHMTU | Section D asks Draft for outstanding permissions. Draft asks its Permissions.                                                                                                          | #43 change 3.3                                         | #43, #23, #30      |
| R10 | @Jack-O-Mahoney               | Agree the controller name RecordingDraftController. Add its card.                                                                                                                      | #43 change 3.7; controller pattern table               | #43, #30           |
| R11 | @Jack-O-Mahoney               | Add an EquipmentItem card, or make missing equipment an attribute of RecordingSession.                                                                                                 | #43 change 3.8                                         | #43, #30           |
| R12 | All                           | Agree DEC-10: one controller for each section, plus a read-only ProductionOverviewController for UC11.                                                                                 | `controller-pattern-decision.md`                       | #43, #25           |
| R13 | Peer reviewer (to be agreed)  | Do a full review of the Section B CRC cards and GRASP justification. Use the Definition of Done.                                                                                       | CRC Cards, GRASP Justification                         | #29                |
| R14 | All                           | Agree the list of client questions before Arno sends it to the lecturer.                                                                                                               | Outstanding Questions                                  | #12, new issue     |
| R15 | @Jack-O-Mahoney               | Peer review of the UC2 interaction diagrams. Make sure that the class and message names agree with the DCD.                                                                            | `OID_UC2_*.puml`                                       | #37, #44, #45      |
| R16 | @Rani-Wheeza                  | Peer review of the access responsibilities. Make sure that BR6, BR7 and NFR1 agree with the CA1 analysis.                                                                              | Access and Permission Responsibilities                 | #40                |
| R17 | @Rani-Wheeza                  | Peer review of the requirements review. Make sure that it agrees with the CA1 analysis.                                                                                                | Requirements Review                                    | #12                |
| R18 | @TsubasaHMTU                  | GS24 must use the same blocked and release words as GS3, GS4 and the Section D scenarios.                                                                                              | `contributors-consent.feature`, GS24                   | #16, #20, #26      |
| R19 | All                           | Agree the shared test data (names, episodes, dates and records).                                                                                                                       | Updated Gherkin Scenarios, Review decisions and limits | #20, #26           |
| R20 | @Rani-Wheeza                  | Agree the numbers CB1 to CB3 for the Section B operation contracts.                                                                                                                    | SSDs and contracts (in progress)                       | #22, #21, #24      |
| R21 | @Jack-O-Mahoney               | In the DCD, is the UC2 decision result an enumeration (DecisionResult) or a boolean?                                                                                                   | `OID_UC2_AlreadyDecided.puml`                          | #44, #45           |

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
- [ ] R15 OID and DCD names
- [ ] R16 Access responsibilities against CA1
- [ ] R17 Requirements review against CA1
- [ ] R18 GS24 words
- [ ] R19 Shared test data
- [ ] R20 CB contract numbers
- [ ] R21 DecisionResult in the DCD

## After the review

- Record each agreed decision in the decision log.
- Each owner changes their own section file.
- Close #12, #16, #29, #37, #40 and #43 when all of their items are closed.
