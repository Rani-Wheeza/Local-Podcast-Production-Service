# CA1 Analysis: Local Podcast Production Service

Individual requirements and domain analysis for **Scenario 29: Kerry Community Media Collective** (module SAAD71000, CA1).

## What this project is

Kerry Community Media Collective produces local-interest podcast programmes. Proposals, contributor details, bookings, audio files, review notes and publication information are spread across email, shared folders, calendars and paper consent forms. This makes it difficult to see what stage a programme has reached and what is blocking it from progressing.

This repository analyses the problem and defines the requirements and conceptual design for a first-release **Production Record System** to coordinate proposals and production records. Audio editing, public streaming, advertising and financial accounting are outside the proposed system's scope.

No working software system is implemented. The project focuses on requirements and domain analysis, including requirements, use cases, behaviour examples and a conceptual domain model.

## Start here

Start with the analysis dossier in `Report/`. The dossier brings together the analysis in the order required by the assignment brief. The other folders contain the supporting artefacts and editable source files.

## Repository structure

```text
├── README.md
├── Report/
│   ├── CA1_Analysis_Dossier.pdf
│   └── CA1_Analysis_Dossier.md
├── Requirements/
│   └── user-stories.md
├── Features/
│   └── production_record.feature
├── Diagrams/
│   ├── use-case-model.puml
│   ├── use-case-model.png
│   ├── domain-model.puml
│   └── domain-model.png
├── Decisions/
│   ├── decision-log.md
│   └── ai-interaction-log.md
├── References/
│   └── references.md
└── Documentation/
    └── Supporting assessment documentation
```

*The tree shows the intended organisation. Verify that each listed file exists in the repository before submission.*

## Repository guide

| Location | Contents |
|---|---|
| `Report/` | Integrated analysis dossier in Markdown and PDF formats, where available. |
| `Requirements/` | User-story backlog and requirements artefacts. |
| `Features/production_record.feature` | Gherkin feature file containing scenarios GS1–GS5. |
| `Diagrams/` | PlantUML source files and exported images for the use-case and domain models. |
| `Decisions/decision-log.md` | Analysis decisions, alternatives and rationale, if maintained as a separate file. |
| `Decisions/ai-interaction-log.md` | Representative record of AI assistance, referenced in Section 12 of the dossier. |
| `References/references.md` | Sources and tools used during the analysis. |
| `Documentation/` | Supporting assessment documentation, where included. |

## Summary of the analysis

The dossier covers the following analysis artefacts. Verify the counts against the final versions before submission.

- **Requirements:** 12 functional requirements (FR1–FR12) and four non-functional requirements (NFR1–NFR4).
- **Use cases:** 11 use cases (UC1–UC11), with UC2 (record a proposal decision) specified in detail.
- **Domain model:** 15 candidate conceptual classes.
- **Open questions:** 13 clarification questions (Q1–Q13) and 13 assumptions (A1–A13), distinguished from facts confirmed by the scenario.
- **Behaviour examples:** Five Gherkin scenarios (GS1–GS5).

## Identifiers

Identifiers are used to maintain traceability between the analysis artefacts.

| Prefix | Meaning | Prefix | Meaning |
|---|---|---|---|
| P | Problem | UC | Use case |
| S | Scope item | GS | Gherkin scenario |
| G | Actor goal | US | User story |
| FR / NFR | Functional / non-functional requirement | BR | Business rule |
| C | Constraint | A | Assumption |
| R | Risk | Q | Clarification question |
| D | Decision | | |

## Evidence and uncertainty

The dossier distinguishes between **confirmed** facts stated in the scenario, **inferred** consequences and **assumptions** that remain subject to confirmation. Where the scenario leaves a policy unresolved, such as what constitutes a significant change, the analysis records a clarification question rather than inventing a definite rule.

## Rendering the diagrams

The `.puml` files are the editable sources for the diagrams. They can be opened using the [PlantUML online editor](https://editor.plantuml.com/) or a compatible editor or IDE plugin.

## Checking the Gherkin

The feature file is located at `Features/production_record.feature`. It contains five behaviour scenarios intended to illustrate proposal decisions, draft readiness and publication-date changes.

Cucumber.js recognised the feature structure, but the recorded test output reported one scenario and five steps as undefined because step definitions had not been implemented. This confirms recognition of the Gherkin structure, not successful execution of automated tests against a working system.

## Working history

The Git commit history records changes made during the development of the analysis. See the repository's commit history for the recorded revisions.

## AI use

AI assistance was used during the analysis and preparation of the dossier. This use is described in Section 12 of the report, with representative interactions recorded in `Decisions/ai-interaction-log.md`.

## Project status

| Item | Status |
|---|---|
| Requirements, use cases, Gherkin, domain model and traceability | Prepared; final consistency check required |
| Reflection (Section 11) | Drafted; verify against the final dossier |
| AI declaration (Section 12) | Drafted; confirm it is included in the final dossier |
| AI interaction log | Drafted; confirm `Decisions/ai-interaction-log.md` is committed |
| PDF dossier in `Report/` | To add if not yet committed |
| Tagged `CA1` release | To create if required by the assignment brief |
