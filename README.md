# Local-Podcast-Production-Service

## What this project is

Kerry Community Media Collective produces local-interest podcast programmes. Proposals, contributor details, bookings, audio files, review notes and publication information are spread across email, shared folders, calendars and paper consent forms, so it is hard to see what stage a programme has reached or what is blocking it.

This repository analyses that problem and defines a first-release Production Record System that coordinates proposals and production records. Audio editing, public streaming, advertising and financial accounting are out of scope. No software is built. The work is the analysis: requirements, use cases, behaviour examples and a conceptual domain model.

## Start here

Read the dossier first: `report/CA1_Analysis_Dossier.pdf` (or the `.md` version). It integrates everything below in the order the brief asks for. The other folders hold the editable sources.

## Contents

| Location | What it holds |
|---|---|
| `report/` | The integrated dossier, as PDF and Markdown |
| `requirements/user-stories.md` | User-story backlog with acceptance criteria (US1 to US12) |
| `features/production_record.feature` | Five Gherkin scenarios (GS1 to GS5) |
| `diagrams/use-case-model.puml` and `.png` | Use-case diagram: source and exported image |
| `diagrams/domain-model.puml` and `.png` | Conceptual domain model: source and exported image |
| `decisions/decision-log.md` | Key analysis decisions, alternatives and reasons |
| `references/references.md` | Sources and tools |

## Summary of the analysis

- **Requirements:** 12 functional requirements (FR1 to FR12) and 4 non-functional requirements (NFR1 to NFR4), each with a priority, source and verification method.
- **Use cases:** 11 use cases (UC1 to UC11), with UC2 (record a proposal decision) specified in detail.
- **Domain model:** 15 conceptual classes.
- **Open questions:** 13 clarification questions (Q1 to Q13) and 13 assumptions (A1 to A13), kept separate from what the scenario confirms.

## Identifiers

Identifiers are stable and used the same way in every file.

| Prefix | Meaning | Prefix | Meaning |
|---|---|---|---|
| P | Problem | UC | Use case |
| S | Scope item | GS | Gherkin scenario |
| G | Actor goal | US | User story |
| FR / NFR | Functional / non-functional requirement | BR | Business rule |
| C | Constraint | A | Assumption |
| R | Risk | Q | Clarification question |
| D | Decision (decision log) | | |

## Evidence labels

The dossier separates **confirmed** facts (stated in the scenario) from **inferred** consequences and from **assumptions** (taken as true until confirmed). Where the scenario leaves a policy open, such as what counts as a significant change, the analysis records it as a question and does not invent a rule.
