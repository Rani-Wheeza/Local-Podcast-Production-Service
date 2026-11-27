# CA2 – Collaborative Object-Oriented Design

## Kerry Community Media Collective – Local Podcast Production Service

Group design for **Scenario 29** (module SAAD71000, Software Analysis and Design). The design builds on Rani Wheeza's CA1 requirements and domain analysis, selected and reconciled by the group, and takes **UC2 Record a proposal decision** through full detailed design.

## Product Goal

Give Kerry Community Media Collective one reliable production record, so that staff can see where every programme stands, from proposal through publication to any later correction, and what is blocking it, while editorial notes and sensitive contributor information stay restricted by role.

## Start here

| Read first | Where |
|---|---|
| Design dossier | [`CA 2/Final_Submission/`](CA%202/Final_Submission/) |
| Project board | [Local Podcast Production Service board](https://github.com/users/Rani-Wheeza/projects/3) |
| Decision log | [`Decision_Log.md`](CA%202/Decisions_and_Reviews/Decision_Log/Decision_Log.md) |

## Where each CA2 artefact is

| Artefact | Location |
|---|---|
| Scenario suitability matrix | [`Group_Documents/Scenario_Suitability_Matrix/`](CA%202/Group_Documents/Scenario_Suitability_Matrix/) |
| Reconciliation and expansion record | [`Group_Documents/Reconciliation_Record/`](CA%202/Group_Documents/Reconciliation_Record/) |
| Revised analysis baseline | [`Group_Documents/Analysis_Baseline/`](CA%202/Group_Documents/Analysis_Baseline/) |
| Prioritised implementation catalogue | [`Group_Documents/Implementation_Catalogue/`](CA%202/Group_Documents/Implementation_Catalogue/) |
| Product Goal and Definition of Done | [`Group_Documents/Product_Goal/`](CA%202/Group_Documents/Product_Goal/), [`Group_Documents/Definition_of_Done/`](CA%202/Group_Documents/Definition_of_Done/) |
| Gherkin feature files | [`Requirements_and_Gherkin/Feature_Files/`](CA%202/Requirements_and_Gherkin/Feature_Files/) |
| Refined domain model | [`Diagrams/Domain_Model/`](CA%202/Diagrams/Domain_Model/) |
| System sequence diagrams | [`Diagrams/System_Sequence_Diagrams/`](CA%202/Diagrams/System_Sequence_Diagrams/) |
| Operation contracts | Each section file, and [`Behavioural_Design/Operation_Contracts/`](CA%202/Behavioural_Design/Operation_Contracts/) for UC11 |
| CRC cards and GRASP | Each section file, integrated in [`Object_Oriented_Design/`](CA%202/Object_Oriented_Design/) |
| Design class diagram (UC2) | [`Diagrams/Design_Class_Diagram/`](CA%202/Diagrams/Design_Class_Diagram/) |
| Object-interaction diagrams (UC2) | [`Diagrams/Object_Interaction_Diagrams/`](CA%202/Diagrams/Object_Interaction_Diagrams/) |
| Review records and retrospectives | [`Decisions_and_Reviews/Review_Records/`](CA%202/Decisions_and_Reviews/Review_Records/) |
| AI interaction log | [`Decisions_and_Reviews/AI_Interaction_Log/`](CA%202/Decisions_and_Reviews/AI_Interaction_Log/) |
| References | [`References/`](CA%202/References/) |

## Sections and owners

Analysis and design work was shared by section. Each section file holds that section's requirements review, Gherkin, SSDs, contracts and CRC cards.

| Section | Use cases | Owner | File |
|---|---|---|---|
| A – Proposal management | UC1, UC2 | Rani Wheeza | [`Section_A_Proposal_Rani/`](CA%202/Individual_Contributions/Section_A_Proposal_Rani/) |
| B – Contributors and consent | UC3, UC4 | Jan Arno Coetzer | [`Section_B_Contributors_Arno/`](CA%202/Individual_Contributions/Section_B_Contributors_Arno/) |
| C – Recording and drafts | UC5, UC6, UC7 | Jack O'Mahoney | [`Section_C_Recording_Jack/`](CA%202/Individual_Contributions/Section_C_Recording_Jack/) |
| D – Review and publication | UC8, UC9, UC10 | Tsubasa Hirose | [`Section_D_Review_Tsubasa/`](CA%202/Individual_Contributions/Section_D_Review_Tsubasa/) |
| Shared | UC11 production overview; UC2 detailed design | Group | – |

## How we worked

- **Board:** every backlog item is a GitHub issue on the project board (Backlog → Ready → In progress → In review → Blocked → Done), labelled by type and section.
- **Reviews:** each item has a named reviewer. Review comments and changes are recorded on its issue.
- **Commits:** commit messages reference the issue number, for example `(#21)`.
- **Decisions:** group decisions are recorded in the decision log (DEC-01 onwards).
- **Baseline:** the final agreed state is tagged `ca2-baseline` (#49).

## Repository layout

```text
├── .github/ISSUE_TEMPLATE/     Issue templates for each backlog item type
├── CA 1/                       Rani's CA1 analysis (selected scenario), kept unchanged
└── CA 2/
    ├── CA1_Reference/          All four members' CA1 work
    ├── Group_Documents/        Matrix, reconciliation, baseline, catalogue, Product Goal, DoD
    ├── Requirements_and_Gherkin/
    ├── Diagrams/               Domain model, SSDs, interaction diagrams, DCD (.puml + .png)
    ├── Behavioural_Design/     Shared operation contracts (UC11)
    ├── Object_Oriented_Design/ Integrated CRC cards and controller decision
    ├── Individual_Contributions/  One folder per section
    ├── Decisions_and_Reviews/  Decision log, review records, AI interaction log
    ├── References/
    └── Final_Submission/       Design dossier and appendices
```

## Group members

Rani Wheeza · Jan Arno Coetzer · Tsubasa Hirose · Jack O'Mahoney