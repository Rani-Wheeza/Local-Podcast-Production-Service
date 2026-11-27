# Contribution Statement – Tsubasa Hirose

**Assessment:** OOAD CA2 (SAAD71000) · **Section:** D – Review and publication (UC8, UC9, UC10)

## Personal work

Work I owned, wrote and took through review:

- **Section D requirements review** (#14): I reviewed the requirements for review, publication and correction (UC8, UC9 and UC10), including FR9, FR10 and FR11, and recorded the keep decisions with reasons in `CA2_Section D.md`. 
- **Gherkin** (#18): I kept GS3, GS4 and GS5 and added GS30–GS36 in `Section_D_Review.feature` for UC8, UC9 and UC10. 
- **SSDs and operation contracts** (#24): I wrote the system sequence diagrams for UC8, UC9 and UC10, and the contracts OC01, OC02, OC03 and OC04. The group reviewed them.
- **CRC cards and GRASP** (#31): I assigned the Section D contract responsibilities to classes, including DraftReview, Publication, PublicationChannel, Correction and ReviewPublicationController, and wrote the GRASP rationale. 
- **UC2 consistency check** (#45): I recorded the comparison of the UC2 design class diagram (#44), the interaction diagrams (#36, #37) and contract CO4 (#21) in `UC2_consistency_check.md` and on the issue. The record names three differences.
- **Iteration 2 review record** (#27): I am the owner of the Iteration 2 review record and retrospective. That record is not in the repository. 

## Group work

Work I did with other members:

- **Detailed design** (#11, DEC-09): I recommended UC2 as the use case to take through detailed design. The group agreed, and UC2 was carried through its system sequence diagram, operation contract CO4, interaction diagrams and design class diagram.
- **Controller pattern** (#43, DEC-10): Rani, Jack and I agreed one controller for each section, and a read-only ProductionOverviewController for UC11. Section D uses ReviewPublicationController.
- **Revised analysis baseline** (#7, DEC-05): I reviewed the baseline. The UC8 wording was then aligned with DEC-05. A returned draft is an outstanding editorial decision until it is reviewed again.

## AI-supported work

I used Claude as a supporting tool. Full details are in my declaration in the [AI Interaction Log](../../Decisions_and_Reviews/AI_Interaction_Log/AI_Interaction_Log.md).

- English translation, review and critique, questions about structure, and finding passages in the course references (Sessions 9–14, the Session 11 laboratory workbook and the CA2 brief).
- A review of my work against those references. AI pointed out inconsistencies between them. One recorded example is the UC9 system sequence diagram review in the log.
- Help with GitHub: commits and pull requests, including git and `gh` commands, commit messages and pull-request descriptions. I checked each change before it was committed or pushed.
- Draft wording for GitHub Project issues and for issue and review comments. I edited the drafts so that they matched the agreed identifiers and decisions before posting them.

I wrote the use cases, SSDs, operation contracts, CRC cards and GRASP rationale. I decided whether to accept, change or reject each AI suggestion.

I made the final decisions on my own work. Decisions that affected the shared design were agreed by the group through GitHub issues and the decision log.

**Tsubasa Hirose**  
**Date:** 27/11/26
