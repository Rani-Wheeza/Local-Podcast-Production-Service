# Scenario suitability matrix (CA2)(draft)

Status: draft template. Summaries come from the scenario documents. Evaluation cells and selection reasons are left blank for the group to decide.

## 1. Scenarios proposed by each member
The following table summarises the four scenarios originally proposed by the group members in CA1. These summaries are based on the supplied scenario documents and analysis artefacts.

| Member | CA1 scenario | Organisation | Summary (from the scenario text) |
|---|---|---|---|
| Rani | 29 Local Podcast Production Service | Kerry Community Media Collective | A small media collective produces local podcast programmes. Proposals, contributor details, consent, audio files, review notes and publication information are spread across email, folders, calendars and paper forms. The system would coordinate proposals and production records: proposal decisions, contributors and consent, recording sessions, source recordings and drafts, draft review, publication and corrections. Audio editing, streaming, advertising and accounting are out of scope. |
| Tsubasa | 36 Banking Operations Change and Incident Service | Atlantic International Banking Services, Tralee Office | An internal banking operations office coordinates planned service changes and investigates operational incidents. Requests, approvals, plans, incident updates and review evidence are spread across email, spreadsheets, tickets and chat. The system would coordinate change requests and approvals, scheduling and dependencies, implementation outcomes, incidents, status communication and post-change or post-incident reviews. Customer account processing, trading, transaction authorisation, fraud decisions and detailed cybersecurity are out of scope. |
| Arno | 31 KETCo Unified Digital Platform | KETCo Unified Digital Platform | KETCo operates a laboratory that tests water and soil samples for local and rural stakeholders. Its existing processes rely on paper forms, spreadsheets and emails to manage sample requests, collection information, intake checks, laboratory assignments, testing and reporting. The proposed platform would centralise sample management, chain-of-custody records, test assignments, measurements, equipment checks and report management. |
| Jack | 11 Atlantic Edge Experiences | Atlantic Edge Experiences | An outdoor activity provider offering guided kayaking, coastal walking and introductory outdoor activities along the Wild Atlantic Way. The proposed system would coordinate bookings, participant information, instructor schedules, equipment readiness and activity sessions. Its purpose is to improve the management of activity operations and the recording of session outcomes and disruptions. |

## 2. Evaluation against the CA2 criteria
Each scenario will be evaluated against the same six criteria identified in the CA2 brief.

A consistent rating scale will be used:

-**High:** Strong evidence that the scenario satisfies the criterion.

- **Medium:** The scenario satisfies the criterion, but some limitations or uncertainties exist.

- **Low:** Significant limitations affect the scenario's suitability against the criterion.

The ratings below are preliminary assessments and are subject to group review.


| Criterion            | What to check                                                                                       | Rani – Podcast | Arno – KETCo | Jack – Atlantic Edge | Tsubasa – Banking |
| -------------------- | --------------------------------------------------------------------------------------------------- | -------------- | ------------ | -------------------- | ----------------- |
| Scope                | Is the system's purpose and boundary clear and manageable?                                          | High           | Medium       | High                 | Medium            |
| Behavioural richness | Does the scenario contain meaningful workflows, interactions and decisions?                         | High           | High         | High                 | High              |
| OO potential         | Does it provide meaningful objects, classes, relationships and responsibilities?                    | High           | High         | High                 | High              |
| Sliceability         | Can its functionality be divided into meaningful, distinct capabilities?                            | High           | High         | High                 | High              |
| Testability          | Can requirements and expected behaviour be verified through scenarios and conditions?               | High           | High         | High                 | High              |
| Comparability        | Is there sufficient information to evaluate the scenario consistently against the other candidates? | High           | High         | Medium               | High              |


# 3. Reasons for each rating

The following explanations provide the initial reasoning behind the proposed ratings. They should be reviewed by the group before the ratings are finalised.

### 3.1 Scope

| Scenario             | Rating | Reason                                                                                                                                                                                                                 |
| -------------------- | ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Rani – Podcast       | High   | The system has a defined purpose of coordinating podcast production records from proposal through publication. Its main activities and exclusions are identified, providing a manageable system boundary.              |
| Arno – KETCo         | Medium | The platform covers several interconnected laboratory processes, including sample intake, custody tracking, testing, equipment checks, external referrals and reporting. This creates a relatively broad system scope. |
| Jack – Atlantic Edge | High   | The system focuses on managing outdoor activity operations, including bookings, participants, instructors, equipment and session readiness. Its purpose and operational boundaries are identifiable.                   |
| Tsubasa – Banking    | Medium | The system has a defined focus on internal change and incident coordination, but covers several interconnected operational activities, including approvals, scheduling, implementation and incident management.        |

### 3.2 Behavioural richness

| Scenario             | Rating | Reason                                                                                                                                                                                                                                  |
| -------------------- | ------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Rani – Podcast       | High   | The system contains connected workflows involving proposal evaluation, editorial decisions, contributor consent, recording, draft reviews, publication and corrections. These activities provide alternative outcomes and interactions. |
| Arno – KETCo         | High   | The system involves sample intake, acceptance or rejection, sample tracking, laboratory assignments, testing, measurement validation, report review and corrections.                                                                    |
| Jack – Atlantic Edge | High   | The system involves bookings, cancellations, participant management, instructor assignments, equipment checks, readiness decisions and activity outcomes.                                                                               |
| Tsubasa – Banking    | High   | The system includes change submissions, approval or rejection, scheduling, conflict checks, implementation outcomes, incident reporting and reviews.                                                                                    |

### 3.3 Object-oriented potential

| Scenario             | Rating | Reason                                                                                                                                                                                                                                                     |
| -------------------- | ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Rani – Podcast       | High   | The scenario provides identifiable domain concepts such as Proposal, Episode, ProposalDecision, Contributor, Consent, RecordingSession, SourceRecording, Draft, Review and Publication. These concepts have meaningful relationships and responsibilities. |
| Arno – KETCo         | High   | The scenario contains domain concepts relating to sample requests, samples, sample tracking, custody records, test assignments, analysts, instruments, measurements and reports. These provide opportunities for modelling objects and relationships.      |
| Jack – Atlantic Edge | High   | The scenario includes concepts such as Activity, Session, Booking, Participant, Instructor, Equipment, EquipmentInspection, ReadinessCheck and Incident. These concepts have identifiable relationships within the activity-management process.            |
| Tsubasa – Banking    | High   | The scenario includes concepts such as ChangeRequest, Approval, Service, ImplementationWindow, ImplementationOutcome, Incident and Review. These provide opportunities to assign responsibilities and model relationships.                                 |

### 3.4 Sliceability

| Scenario             | Rating | Reason                                                                                                                                                                             |
| -------------------- | ------ | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Rani – Podcast       | High   | The production process contains distinguishable areas such as proposal management, contributor and consent management, recording and draft management, and review and publication. |
| Arno – KETCo         | High   | The laboratory process contains distinct activities such as sample intake, sample tracking, laboratory testing, measurement recording and report management.                       |
| Jack – Atlantic Edge | High   | The system contains distinct operational areas such as booking management, participant management, instructor and equipment coordination, and activity-session management.         |
| Tsubasa – Banking    | High   | The system contains distinct areas such as change-request management, approvals and scheduling, implementation tracking, and incident management.                                  |

### 3.5 Testability

| Scenario             | Rating | Reason                                                                                                                                                                                                                            |
| -------------------- | ------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Rani – Podcast       | High   | The requirements describe observable outcomes, including recording proposal decisions, maintaining consent information, identifying source recordings and drafts, recording review outcomes and tracking publication corrections. |
| Arno – KETCo         | High   | The requirements include verifiable activities such as generating sample identifiers, recording custody information, checking sample conditions, recording measurements and managing report versions.                             |
| Jack – Atlantic Edge | High   | The requirements describe observable outcomes such as recording bookings, checking equipment readiness, maintaining participant information, changing session status and recording incidents.                                     |
| Tsubasa – Banking    | High   | The requirements describe observable outcomes such as submitting change requests, approving or rejecting requests, checking scheduling conflicts and recording implementation outcomes.                                           |

### 3.6 Comparability

| Scenario             | Rating | Reason                                                                                                                                                                                     |
| -------------------- | ------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| Rani – Podcast       | High   | The original dossier contains scenario information, scope, stakeholders, requirements, business rules, use cases, Gherkin examples and domain modelling material.                          |
| Arno – KETCo         | High   | The supplied specification contains structured requirements and business architecture information, including scope, actors, requirements, constraints and conceptual modelling.            |
| Jack – Atlantic Edge | Medium | The original CA1 work is available across separate artefacts rather than one consolidated dossier. The material can still be evaluated, but it requires examination across multiple files. |
| Tsubasa – Banking    | High   | The supplied dossier contains structured requirements and domain analysis information, including scope, actors, business rules, requirements, use cases and conceptual modelling.          |

## 4. Overall comparison

All four scenarios demonstrate potential for object-oriented analysis and design. Each has identifiable stakeholders, meaningful workflows, domain concepts and requirements that can be examined through behavioural and structural models.

The main differences relate to the nature and complexity of their operational domains.

| Scenario                                       | Main strengths                                                                                                  | Main considerations                                                                                 |
| ---------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| Local Podcast Production Service               | Clear production lifecycle, identifiable domain concepts, connected workflows and manageable system boundaries. | Requires coordination of several related production stages and permission records.                  |
| KETCo Unified Digital Platform                 | Detailed operational processes, sample tracking, testing activities and report management.                      | Broader technical and operational scope involving laboratory activities and equipment.              |
| Atlantic Edge Experiences                      | Clear activity-management process involving bookings, participants, instructors and equipment.                  | Original analysis is distributed across multiple artefacts, requiring consolidation for comparison. |
| Banking Operations Change and Incident Service | Rich approval, scheduling, implementation and incident-management workflows.                                    | Several interconnected operational processes and potentially complex decision rules.                |

The comparison indicates that each candidate has strengths, but they differ in scope, operational focus and the amount of coordination required to analyse their processes.

## 5. Recommendation and justification

**Recommended scenario: Scenario 29 – Local Podcast Production Service**

The group selected the Local Podcast Production Service proposed by Rani.

The following points provide the proposed justification for the selection:

1. **Clear organisational problem:** Production information is distributed across emails, shared folders, calendars and paper forms. This creates difficulties tracking proposals, contributors, recording sessions, reviews and publication.

2. **Manageable scope:** The system focuses on coordinating production records rather than implementing audio editing, public streaming, advertising or financial accounting.

3. **Meaningful workflows:** The production process contains connected activities and decisions, including proposal evaluation, contributor consent, recording, draft review, publication and corrections.

4. **Strong object-oriented potential:** The scenario provides identifiable domain concepts and relationships that can be developed into CRC cards, GRASP responsibilities, a Design Class Diagram and interaction models.

5. **Verifiable behaviour:** Requirements and business rules provide opportunities to describe successful, alternative and exceptional outcomes through use cases and Gherkin scenarios.

6. **Suitable for collaborative analysis and design:** The production process can be examined through four related areas: proposal management; contributors and consent; recording and draft management; and review and publication.

The group considered the scenario suitable for the remaining CA2 analysis and design work. The lecturer subsequently approved the selection.

## 6. Group decision and approval record

| Decision item                 | Record                                         |
| ----------------------------- | ---------------------------------------------- |
| Selected scenario             | Scenario 29 – Local Podcast Production Service |
| Organisation                  | Kerry Community Media Collective               |
| Proposed by                   | Rani                                           |
| Group decision                | Selected – meeting confirmation to be recorded |
| Lecturer approval             | Approved                                       |
| CA3 slices and implementation | Excluded following lecturer approval           |
| Date of group decision        | To be completed                                |
| Date of lecturer approval     | To be completed                                |
| Group members present         | To be completed                                |

### Outstanding actions

- [ ] All four members review the scenario summaries.
- [ ] All four members review and agree on the evaluation criteria.
- [ ] Review and confirm the provisional ratings.
- [ ] Agree on the final selection justification.
- [ ] Record the group meeting and decision.
- [ ] Record the lecturer's approval and any additional instructions, if provided.

## 7. Conclusion

The comparison demonstrates that all four proposed scenarios have potential for collaborative object-oriented analysis and design.

The Local Podcast Production Service was selected because it offers a clear organisational problem, a manageable system boundary, connected business workflows and meaningful domain concepts.

The completed matrix and supporting decision record will form part of the group's CA2 scenario evaluation evidence.

---

**Document status:** Draft for group review. The ratings, evaluation explanations and meeting records require group confirmation before being treated as final.