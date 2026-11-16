# Section C: Recording, Source Recordings and Permissions

Member 3: Jack O'Mahoney  
CA1 source: Rani Wheeza's analysis dossier (T00244793)

Source files: [CA1 analysis dossier](../../../../CA%201/Report/CA1_Analysis_Dossier.md), [CA1 user stories](../../../../CA%201/Requirements/user-stories.md), [CA1 feature file](../../../../CA%201/Features/production_record.feature), and [CA2 reconciliation record](../../../../CA%202/Group_Documents/Reconciliation_Record/CA1_Reconciliation_Record.md).

This section covers recording sessions, source recordings, draft versions and permissions. It reviews and designs UC5, UC6 and UC7.

## Your Section C tasks

Suggested order, with the recording/draft relationship review before detailed design:

- [ ] #13 Review recording-session and draft requirements
- [ ] #17 Update relevant Gherkin scenarios
- [ ] #41 Review relationships between recordings and drafts
- [ ] #23 Produce SSDs and operation contracts for UC5–UC7
- [ ] #30 Create CRC cards for RecordingSession, SourceRecording, Draft and Permission
- [ ] #34 Apply relevant GRASP principles

## Task #13 — Review recording-session and draft requirements

### Problem statement

- Recording sessions may need equipment or support that is missing (S4, G4, G5).
- A session can produce several source recordings, and working filenames may not show which files are usable (S5, G6).
- Several drafts can exist for one episode, so their relationships to source recordings and their approval status need to be clear (FR7, UC6, A11, Q4).
- Outstanding permission for music, archive clips or external material can block publication (S7, G7, BR5).
- CA1 assumes the system stores information about audio files, not the audio itself (A1); large files may not be practical to upload from outside the studio (C3). Whether the system holds files or only references remains open under Q8.

### Scope of this section

### In this section

| ID | Name | Related requirements |
|---|---|---|
| UC5 | Record a recording session and equipment needs, including any missing item | FR6 |
| UC6 | Record source recordings and draft versions | FR7 |
| UC7 | Record permissions for material used | FR8 |

### Outside this section

| Item | Owner | Why it is outside |
|---|---|---|
| Draft review and publication decisions | Section D | UC8 records the authorised editor's review outcome (FR9); Section C records source and permission information used by that workflow. |
| Contributor consent | Section B | UC4 records contributor consent (FR5); Section C records permission for third-party material, a separate concept. |
| The production overview | Shared / UC11 | Section C records source information; the overview is a separate use case (FR12). |

### Requirements Review

#### Review method

Check each requirement against the scenario, its source evidence, linked goal/use case, priority and verification method. Record review decisions and reasons below; note unresolved questions instead of treating assumptions as confirmed rules.

#### Functional requirements

| ID | CA1 statement: summary | Priority | CA1 verification | Decision | Reason | Evidence |
|---|---|---|---|---|---|---|
| FR6 | Record a session's date, location, required equipment and any required item reported missing. | Should | Record a session needing a recorder, mark one component missing, and check the session shows it. | Keep | Session date, location, equipment needs any missing items to be recorded are shown to be required | S4, G4, G5, UC5; US5 |
| FR7 | Record source recordings and drafts of an episode, show their relationships, and identify which draft is approved. | Must | Record one session with several files and two drafts; check each draft links to its sources. | Keep | Files are shown to be required to link to sessions and drafts to their source recordings. | S5, G6, UC6; US6 |
| FR8 | Let the technical editor record permission status for music, archive clips and external material against the draft, and show outstanding permissions. | Must | Record one granted and one outstanding permission on a draft; check the outstanding one is shown. | Keep | Permission status is shown to be required to be recorded against drafts and outstanding permissions need to be visible | S7, G7, UC7; US7 |

#### Relevant rules and assumptions

| ID | Rule, constraint or assumption | Effect on Section C | Decision or status |
|---|---|---|---|
| BR3 | An authorised editor reviews a draft, including its permissions, before publication. |  |  |
| BR5 | A draft with an outstanding permission, contributor confirmation or editorial decision is blocked from publication. |  |  |
| C3 | Large audio files are not always practical to upload from outside the studio. |  |  |
| A1 | The system holds information about audio files, not the audio itself. |  |  |
| A11 | An approved draft is a status of a draft, not a separate item. |  |  |
| A12 | Each recording session relates to one episode. |  |  |

#### Open questions

| ID | Question | Effect on Section C | Status |
|---|---|---|---|
| Q4 | How are source recordings, drafts and approved versions identified and related? |  |  |
| Q8 | Does the system hold audio files or only references to them? |  |  |

These are CA1 open questions; do not treat them as resolved design rules without group agreement.

The reconciliation record also contains proposed changes to how BR5 and the blocked draft state are interpreted (RD-04 to RD-06). Confirm their group status and align Section C terminology with Section D before finalising the design.

## Task #17 — Update relevant Gherkin scenarios

### Existing scenarios

- CA1 has no Gherkin scenario for FR6/UC5 or FR7/UC6 (US5 and US6 list no Gherkin).
- CA1 GS4 covers a draft blocked by an outstanding archive-clip permission. It belongs to UC8 and tests the publication consequence of FR8/BR5; coordinate with Section D rather than replacing it.

The relevant CA1 GS4 behaviour is: given a complete, edited draft with an outstanding archive-clip permission, when the authorised editor reviews it for publication, the draft is not released and is shown as blocked by that permission.

### New scenario coverage

CA1 user stories and acceptance criteria to preserve:

| Story | CA1 user story | Priority / business value | Acceptance criteria |
|---|---|---|---|
| US5 | As a session organiser, I want to record a session's date, location and equipment needs and flag a missing item, so that a missing cable or microphone is noticed before the session. | Should; reduces stopped sessions (P8). | The session lists its equipment; a missing component shows on the session. CA1 does not assume the system prevents a session proceeding. |
| US6 | As a technical volunteer, I want to record which files came from a session and which drafts use them, so that the correct source is easy to identify. | Must; addresses working filenames and several drafts (P3). | Several files from one session can be recorded; each draft links to its sources; the approved draft can be identified. Q4 leaves version relationships open. |
| US7 | As a technical editor, I want to record permission for music, archive clips and external material against the draft that uses it, so that outstanding permissions are visible. | Must; prevents a finished draft being blocked by an unnoticed permission (P6). | Granted and outstanding permissions can be recorded on a draft; outstanding permissions are shown. CA1 links GS4. |

| Scenario | Type | Test coverage | Requirement | Use case | Rule or constraint |
|---|---|---|---|---|---|
|  |  |  |  |  |  |

### Review decisions and limits

- [Record what the scenarios do and do not establish.]
- [Confirm scenario identifiers with the group before merging.]

## Task #41 — Review relationships between recordings and drafts

Review these CA1 associations and multiplicities against the agreed group domain model. Record a decision or flag uncertainty; Q4 is still open.

| Relationship | Current model | Review or decision | Open question or impact |
|---|---|---|---|
| Episode and RecordingSession | One Episode to zero or more sessions; each session relates to one Episode (A12). |  |  |
| RecordingSession and SourceRecording | One session produces zero or more source recordings. |  |  |
| Episode and Draft | One Episode may have zero or more drafts; several drafts can exist. |  | Q4 |
| Draft and SourceRecording | A draft draws on one or more source recordings; a source recording may be used by zero or more drafts. |  | Q4 |
| Draft and Permission | A draft may need zero or more permissions; a permission may relate to one or more drafts. |  | FR8; check against the agreed model. |

## Task #23 — Produce SSDs and operation contracts (UC5–UC7)

### System Sequence Diagrams

Use the agreed two-column actor/system format. Add a main success flow and named alternatives that are supported by the requirements or agreed decisions.

#### UC5: Record a recording session and equipment needs

Use case: Record a recording session and equipment needs, including any missing item (FR6).  
Primary actor: Production coordinator, with session organiser.  
Goal: Plan a session and its equipment, including room, kit and technical support (G4, G5).

Main success scenario: [Name the flow.]

| Actor | System |
|---|---|
|  |  |

Alternative scenarios:

#### [Scenario name]

| Actor | System |
|---|---|
|  |  |

#### UC6: Record source recordings and draft versions

Use case: Record source recordings and draft versions; an approved draft is not assumed to be the version published (FR7).  
Primary actor: Technical volunteer.  
Goal: Record a session's files and mark which are usable (G6).

Main success scenario: [Name the flow.]

| Actor | System |
|---|---|
|  |  |

Alternative scenarios:

#### [Scenario name]

| Actor | System |
|---|---|
|  |  |

#### UC7: Record permissions for material used

Use case: Record permissions for material used (FR8).  
Primary actor: Technical editor.  
Goal: Record permissions for music, archive clips and external material (G7).

Main success scenario: [Name the flow.]

| Actor | System |
|---|---|
|  |  |

Alternative scenarios:

#### [Scenario name]

| Actor | System |
|---|---|
|  |  |

### Operation Contracts

[For each system operation in the SSDs, record its preconditions and postconditions. Keep the operations consistent with the agreed domain model.]

#### UC5 operations

##### [Operation name]

- **Preconditions:**
- **Postconditions:**

#### UC6 operations

##### [Operation name]

- **Preconditions:**
- **Postconditions:**

#### UC7 operations

##### [Operation name]

- **Preconditions:**
- **Postconditions:**

## Task #30 — Create CRC cards

### RecordingSession

- **CA1 attributes:** date, locationType, locationDescription, equipmentNeeded (FR6).
- **Responsibilities:**
- **Collaborators / related classes to check:** Episode, SourceRecording.

### SourceRecording

- **CA1 attributes:** workingName, usabilityNote (FR7).
- **Responsibilities:**
- **Collaborators / related classes to check:** RecordingSession, Draft.

### Draft

- **CA1 attributes:** versionDescription, status (FR7).
- **Responsibilities:**
- **Collaborators / related classes to check:** Episode, SourceRecording, Permission.

### Permission

- **CA1 attributes:** materialDescription, materialSource, permittedUse, status (FR8).
- **Responsibilities:**
- **Collaborators / related classes to check:** Draft.

## Task #34 — Apply relevant GRASP principles

| Principle | Responsibility or assignment | Reason |
|---|---|---|
|  |  |  |

## Shared group follow-up

These are group integration items, not additional Section C design sections:

- [ ] #8 Review and finalise the group domain model
- [ ] #20 Consolidate and review all Gherkin scenarios
- [ ] #43 Integrate CRC cards and GRASP decisions; agree controllers
- [ ] #47 Compile and review the final CA2 design dossier
- [ ] #48 Prepare the group design walkthrough

Q4 and Q8 remain open CA1 questions; carry them into group discussion if the design needs a decision.

## Summary

[Summarise the Section C decisions and any dependencies for group integration.]