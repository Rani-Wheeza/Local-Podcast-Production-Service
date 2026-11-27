# Iteration 4 – Review Record and Final Retrospective

**Board item:** #50
**Date:** 27/11/26 · **Present:** Rani, Arno, Jack, Tsubasa

## Review

**Iteration goal:** complete the detailed design of UC2, check it for consistency, and put together the final design dossier for the `ca2-submission` tag.

| Item                                          | Result                                                                                         |
|-----------------------------------------------|------------------------------------------------------------------------------------------------|
| #36 UC2 main-flow interaction diagram         | Done; `getDetails()` added to Proposal and the DCD after review                                |
| #37 UC2 alternative interaction diagrams      | Done; rejected, returned, held and already-decided flows                                       |
| #43 CRC integration and controller pattern    | Done; DEC-10 agreed; conflicts 3.2–3.9 and 3.11 resolved; 3.1 and 3.10 recorded as limitations |
| #44 UC2 design class diagram                  | Done                                                                                           |
| #45 Consistency check (DCD, OIDs, CO4)        | Done; three differences found and aligned (outcome names, `create`, source of the editor)      |
| #40 Role-based access responsibilities        | Done; NFR1 extension agreed as DEC-12                                                          |
| #47 Design dossier                            | Done; updated against the updated brief                                                        |
| AI interaction log                            | Done; group declaration and four individual declarations                                       |
| Contribution statements                       | One for each member, in each section folder                                                    |

**Criteria checked:** every item against the Definition of Done, with one reviewer per card. The consistency check (#45) compared the DCD, the five interaction diagrams and CO4.

**Feedback:** reviews found real mismatches before submission: a message in #36 with no DCD operation, three differences in #45, and dossier figure links that did not display from `Final_Submission/`.

**Backlog changes:** UC8 was not designed in full, because there was not enough time (DEC-09). The updated brief restored individual contribution statements, so the group added them (DEC-03 update).

## Final retrospective

- **Keep:** a named reviewer on every card, with the review in the issue. Reviews found mismatches between the diagrams, the DCD and the contracts before the tag.
- **Problem:** members edited the same shared files at the same time without pulling first. This caused merge conflicts, and some fixes in the dossier were overwritten and had to be made again.
- **Improvement:** pull before editing a shared file, and use a branch and pull request for significant changes to shared files such as the dossier, so that changes are reviewed and not overwritten.

Retro points agreed by: Jack, Tsubasa, Arno.