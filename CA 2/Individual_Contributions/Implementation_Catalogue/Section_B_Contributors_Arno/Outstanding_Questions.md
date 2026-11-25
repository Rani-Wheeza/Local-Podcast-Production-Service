# Section B: Outstanding Questions

Member 2: Arno Coetzer  
<!-- Language: ASD-STE100 Simplified Technical English. Class names, operation names, requirement IDs and GRASP terms are technical names. They do not change. -->
<!-- Put this text into CA2_Section_B.md, below the applicable heading. Section B uses the scenario numbers GS20 to GS29 (DEC-06). The numbers GS20 to GS25 replace the old numbers GS6 to GS11. -->

Each question asks about the work of Kerry Community Media Collective. The group cannot answer these questions. Thus, the group sends all of them to the lecturer, who acts as the client. Until the client gives an answer, the design records the question. The design does not assume a rule.

### Questions for the client

| ID    | Question for the client                                                                                            | Reason for the question                                                              | Effect on Section B | Design until the answer                                               | Status            |
|-------|--------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|---|-----------------------------------------------------------------------|-------------------|
| Q3    | When does the collective ask for new consent? For example, for a reused recording, a large edit, or a new channel. | The collective can use an episode again without valid consent (R2).                  | Consent attributes, GS22 to GS24 | No expiry rule. No renewal rule. One consent for each contribution.   | Open              |
| Q7    | Which information can volunteers, contributors and partners see?                                                   | Incorrect access can show sensitive contributor information (R5).                    | All "Open" cells in the access matrix | The design applies only the agreed rules (NFR1, BR7, E5).             | Open              |
| Q9    | Do partners and contributors use the system directly? Or do staff enter all information for them?                  | If they have direct access, they become actors. This changes the users of each view. | Roles table, A5, GS25 | Staff enter the information for them (A5). This is provisional.       | Open              |
| Q10   | Which role records consent?                                                                                        | The SSD actor and the user of the controller depend on the answer.                   | UC3 and UC4 actor, A6 | The production coordinator records consent (A6). This is provisional. | Open              |
| OQ-B1 | Can one consent be for two roles of one person on one episode? For example, presenter and performer.               | The answer tells if Consent is for one Contribution or for more than one.            | The multiplicity between Consent and Contribution, the Creator decision for Consent, GS20 | One consent for each contribution. Contribution creates Consent.      | Open (new in CA2) |
| OQ-B2 | Can a contributor withdraw consent? What does the collective do then?                                              | A withdrawal can stop an episode that is planned or already published.               | Consent, BR5, the Section D publication workflow | The design has no withdrawal procedure.                               | Open (new in CA2) |
| Q11   | How does the collective record contributor concerns? Who can see them?                                             | Decision D2 deferred this item.                                                      | Not in the first release | Not in the scope (D2).                                                | Deferred          |

### Use of the answers

| If the answer is...                                       | Necessary change                                                                                              |
|-----------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Q3 gives conditions for renewal                           | Add consent attributes or a renewal rule. Add new scenarios with the numbers GS26 to GS29.                    |
| Q7 gives the permissions                                  | Fill the open cells in the access matrix. Give the access responsibility to a class. Add tests.               |
| Q9 tells that partners or contributors have direct access | Add them as actors. Examine A5 and GS25 again.                                                                |
| Q10 gives a different role                                | Change the SSD actor and the text of the scenarios.                                                           |
| OQ-B1 is "yes"                                            | Change Consent so that it can be for more than one contribution. Examine the Creator decision and GS20 again. |
| OQ-B2 is "yes"                                            | Add a withdrawal operation. Agree its effect on publication with Section D.                                   |

### Record of questions to the client

<!-- TODO: Write the date of the question, the answer, and the date of the answer. Add a decision-log entry for each answer. -->

| ID    | Date of the question | Answer | Date of the answer | Decision log |
|-------|----------------------|--------|--------------------|--------------|
| Q3    |                      |        |                    |              |
| Q7    |                      |        |                    |              |
| Q9    |                      |        |                    |              |
| Q10   |                      |        |                    |              |
| OQ-B1 |                      |        |                    |              |
| OQ-B2 |                      |        |                    |              |
