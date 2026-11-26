# Section B: Access and Permission Responsibilities

Member 2: Arno Coetzer  
<!-- Language: ASD-STE100 Simplified Technical English. Class names, operation names, requirement IDs and GRASP terms are technical names. They do not change. -->
<!-- Put this text into CA2_Section_B.md, below the applicable heading. Section B uses the scenario numbers GS20 to GS29 (DEC-06). The numbers GS20 to GS25 replace the old numbers GS6 to GS11. -->

This section records only the access rules that the baseline gives or assumes. All other cells are open until the group gets the answers to Q7 and Q9. This section does not add new rules.

Access follows production roles. Access does not follow people (BR6). One person can have more than one role. That person gets the access of all of their roles (E12).

### Roles

| Production role                      | Source       | Direct access to the system                                                                        |
|--------------------------------------|--------------|----------------------------------------------------------------------------------------------------|
| Production coordinator               | A6, UC3, UC4 | Yes (A6). This is provisional until the answer to Q10.                                             |
| Proposal editor or authorised editor | UC2, UC8     | Yes (the actors in Sections A and D).                                                              |
| Volunteer                            | NFR1         | Open (Q9).                                                                                         |
| Partner organisation                 | A5, D1       | No. Staff enter the information for partners (A5). This is provisional until the answer to Q9.     |
| Contributor                          | A5, D1       | No. Staff enter the information for contributors (A5). This is provisional until the answer to Q9. |

### Permission matrix (agreed items only)

"Open" means that the baseline does not give a rule. "If provided" means that the rule applies only to a partner view or volunteer view that the system provides (NFR1, Q9).

| Information                                            | Coordinator                                | Editor                                                   | Volunteer              | Partner                                                         | Contributor | Basis           |
|--------------------------------------------------------|--------------------------------------------|----------------------------------------------------------|------------------------|-----------------------------------------------------------------|-------------|-----------------|
| Contributor name, role and agreed credit               | Yes. The coordinator records it (A6, UC3). | Open                                                     | Open                   | Open                                                            | Open        | FR4, A6, Q7     |
| Contact preference and availability                    | Yes. The coordinator records it (A6, UC3). | Open                                                     | Open                   | Open                                                            | Open        | FR4, A6, Q7, R5 |
| Consent form, intended use, date and evidence location | Yes. The coordinator records it (A6, UC4). | Open                                                     | Open                   | Open                                                            | Open        | FR5, A6, Q7     |
| Outstanding consent for an episode                     | Yes. The overview shows it (GS24, UC11).   | Yes. The editor uses it in the draft review (BR5, GS24). | Open                   | Open                                                            | Open        | BR5, GS24       |
| Private correspondence                                 | Open                                       | Open                                                     | No (E5)                | Open                                                            | Open        | E5, Q7          |
| Internal editorial notes                               | Open                                       | Open                                                     | No, if provided (NFR1) | No, if provided (BR7, NFR1)                                     | Open        | NFR1, BR7, GS25 |
| Production progress                                    | Yes (UC11)                                 | Open                                                     | Open                   | Yes, if provided. The view does not show internal notes (US12). | Open        | US12, NFR1      |

### Tests that are available now

| Rule                                                                                 | Test |
|--------------------------------------------------------------------------------------|------|
| A partner view or volunteer view does not show internal editorial notes (NFR1, BR7). | GS25 |
| The draft review and the coordinator overview show outstanding consent (BR5).        | GS24 |

The group must get the answer to Q7 before it can write tests for the other cells.

### Class responsibility

| Responsibility                                                                     | Class | Status                                                                                             |
|------------------------------------------------------------------------------------|-------|----------------------------------------------------------------------------------------------------|
| Remove internal editorial notes from a partner view or volunteer view (NFR1, GS25) | Open  | The group gives this responsibility to a class after the answer to Q9. Q9 tells which views exist. |
| Identify the information that each role can see                                    | Open  | This depends on the answer to Q7.                                                                  |

The Section B classes (Contributor, Contribution, Consent) only record information. Their CRC cards do not contain access rules.

### Open items

| Question           | Effect on this section                                                                                                      |
|--------------------|-----------------------------------------------------------------------------------------------------------------------------|
| Q7                 | The answer gives a value to each "Open" cell in the matrix.                                                                 |
| Q9                 | The answer tells if volunteers, partners and contributors have direct access. It also tells which "if provided" rows apply. |
| Q10                | The answer tells if the coordinator is the role that records contributors and consent.                                      |
| Q11 (deferred, D2) | The answer tells who can see contributor concerns. This item is not in the scope of the first release.                      |
