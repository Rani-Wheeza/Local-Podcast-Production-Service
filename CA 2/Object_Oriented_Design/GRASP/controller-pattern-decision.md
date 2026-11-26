# Controller Pattern Decision (CA2)

**Board item:** #43 Integrate CRC cards and agree the controller pattern
**Owner:** Arno · **Reviewer:** TODO
**Status:** Proposed. The group must agree this decision at the group meeting. Then, add DEC-10 to the decision log.

<!-- Language: ASD-STE100 Simplified Technical English. Class names, operation names, requirement IDs and GRASP terms are technical names. They do not change. -->

## 1. Decision

The design has **one use-case controller for each section**. The design also has a separate **ProductionOverviewController** for UC11. This controller only reads data.

| Controller                                                   | Section | Use cases      | System operations                                                                                                                 | Source                        |
|--------------------------------------------------------------|---------|----------------|-----------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
| ProposalController                                           | A       | UC1, UC2       | `recordProposal`, `addPlannedEpisode`, `updateProposalDetails`, `selectProposal`, `recordDecision`                                | Section A GRASP (#32)         |
| ContributorConsentController                                 | B       | UC3, UC4       | `recordContributor`, `recordContribution`, `updateContributorDetails`, `selectContribution`, `recordConsent`                      | Section B GRASP               |
| RecordingDraftController (proposed name; Jack must agree it) | C       | UC5, UC6, UC7  | `recordRecordingSession`, `recordSourceRecording`, `recordDraft`, `recordPermission`, `viewDraftPermissions` | Section C SSDs (#23)          |
| ReviewPublicationController                                  | D       | UC8, UC9, UC10 | `selectDraft`, `viewDraft`, `recordReview`, `recordPublicationDate`, `changePublicationDate`, `recordCorrection`                  | Section D CRC cards           |
| **ProductionOverviewController**                             | Shared  | UC11           | `viewProductionOverview`, `viewDraftBlockers`                                                                                     | UC11 contracts CO11.1, CO11.2 |

## 2. Reasons for a separate ProductionOverviewController

- **Controller:** UC11 is a separate use case. Thus, it has its own use-case controller. All other use cases use the same method.
- **High Cohesion:** The controller has one purpose. It reads the status from all sections. It does not create, change or save data. CO11.1 and CO11.2 have no postconditions.
- **Low Coupling:** The controller asks the domain objects for their data. For example, it uses `episode.outstandingConsents()` (Section B). It also asks the draft for its outstanding permissions (Section C). It does not use other controllers.
- **Information Expert:** For each overview category, the class that keeps the data gives the answer. The controller only collects the answers.

## 3. Source of each overview category

| Category (CO11.1)                                   | Class that gives the answer                                                                                    | Section |
|-----------------------------------------------------|----------------------------------------------------------------------------------------------------------------|---------|
| Proposals that wait for a decision; held proposals  | `Proposal.currentState()`                                                                                      | A       |
| Recording sessions in the future; missing equipment | `RecordingSession`                                                                                             | C       |
| Missing consent                                     | `Episode.outstandingConsents()` gives each contribution that has no consent. Episode asks each `Contribution`. | B       |
| Outstanding permissions                             | The `Permission` status, through `Draft`                                                                       | C       |
| Drafts that wait for review; blocked drafts         | The `Draft` status and blockers                                                                                | C, D    |
| Scheduled publications                              | `Publication`                                                                                                  | D       |

## 4. Rejected alternatives

| Alternative                                                               | Reason for rejection                                                                                                                             |
|---------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| A facade controller: one `ProductionRecordSystem` for all operations      | This controller receives approximately 24 operations. It becomes a God controller. The brief tells the group not to use this type of controller. |
| UC11 in a controller that exists, for example ReviewPublicationController | That controller must then get data from all four sections. Its cohesion decreases. It becomes almost a facade controller.                        |
| No controller for UC11: the user interface reads the domain objects       | This does not obey the Controller principle. It also puts system logic in the user interface.                                                    |

## 5. Rules for all controllers

- Receive system operations, find objects, send the work to domain objects, and save. Do not make business decisions.
- Get the current date from the shared `Clock` interface.
- Use repositories to find and save objects (Pure Fabrication). Do not use the domain classes for this work.
- Do not call the controller of a different section. Send questions between sections to domain objects.

## 6. Decision log entry

```markdown
## DEC-10: Controller pattern for CA2 design

- **Date:** TODO
- **Context:** Each section designed its own controller. UC11 reads data from all sections. UC11 had no controller (#43).
- **Decision:** One use-case controller for each section (A to D). Also, one ProductionOverviewController for UC11. This controller only reads data.
- **Reasoning:** Each controller keeps high cohesion. The design does not use one facade controller. UC11 only reads data. Thus, its controller is small. It asks the domain objects for their data.
- **Rejected alternatives:** A facade controller. UC11 in a controller that exists. No controller for UC11.
- **Consequences:** Section C gives a name to its controller (proposed: RecordingDraftController). The DCD (#44) shows five controllers and the shared Clock.
- **Evidence:** Object_Oriented_Design/GRASP/controller-pattern-decision.md, #43
```
