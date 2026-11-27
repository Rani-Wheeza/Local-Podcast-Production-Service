# Section B: Contributors and Consent

Member 2: Arno Coetzer  
CA1 source: Rani Wheeza's analysis dossier (T00244793)

Evidence references E1 to E39 identify items in the Evidence Document, Source Material for Section B. This section reviews the CA1 analysis for contributors and consent. It also identifies information that the CA1 analysis does not state.

## Problem statement

Rani's problem statement describes records in different locations. It also identifies the need to restrict access to sensitive information (E1).

This section gives more information about contributors and consent. The information comes from E2 to E7 and E18 to E21.

Contributors can give consent in three forms (E2, E19):

- **Paper:** The contributor gives consent on paper.
- **Email:** The contributor gives consent by email.
- **Verbal consent:** The contributor gives consent at the start of a recording.

Before publication, staff must examine paper forms, emails and recordings for consent. These separate checks can make complete consent records difficult to confirm (E3).

Staff cannot publish a completed draft while a contributor confirmation, permission or editorial decision remains outstanding (E4, E18). Contributors also need information about the intended use of their recordings and their agreed credit (E7, E13).

Access to sensitive contributor information must follow production roles (E18). Incorrect access could cause harm to privacy and reduce contributor trust (E5, E21).

The analysis identifies a risk, not an actual privacy breach. It does not state how frequently the problems occur (E1).

## Requirements Review

This review covers the CA1 requirements that affect Section B. For each item, the review gives a decision and a reason.

### Review method

An unresolved question is not a reason to assume a new rule. The Outstanding Questions section will record the question for a group decision.

A requirement does not need a change only because it has no Gherkin scenario. This review keeps FR4 and FR5 unchanged. The Updated Gherkin Scenarios section gives their new test coverage.

### Functional and non-functional requirements

The CA1 statements below are summaries, not direct quotations. The decisions distinguish requirement changes from additional tests and class-design work.

| ID   | CA1 statement: summary                                                                                     | Decision                                  | Reason                                                                                                                                                                                                                                                 | Evidence                |
|------|------------------------------------------------------------------------------------------------------------|-------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------|
| FR4  | Staff can record contributor roles, contact preferences, availability and agreed attribution for episodes. | Keep. Add Gherkin scenarios.              | FR4 identifies the required information. CA1 gives a verification method but no Gherkin scenario. New scenarios cover roles, agreed credit, contact preferences and availability. Class responsibilities do not require a change to FR4.               | E15, E27, E29, E33, E35 |
| FR5  | Staff can record consent for an episode, with its form, intended use, date and evidence location.          | Keep. Add Gherkin scenarios.              | FR5 identifies the required consent information. CA1 gives a verification method but no Gherkin scenario. New scenarios cover the three consent forms and all required details. A separate test applies BR5 when required consent remains outstanding. | E16, E18, E33, E34, E36 |
| NFR1 | A partner or volunteer view displays no internal editorial note, if the system provides that view.         | Propose an extension. Keep the condition. | NFR1 covers internal editorial notes. E1 and R5 also identify sensitive contributor information. E5 identifies private correspondence that volunteers must not see. Q7 must define other access permissions. Q9 must resolve direct access.            | E1, E5, E17, E21, E37   |

#### Gherkin coverage and design actions

- **FR4 coverage:** The US3 scenarios cover roles across episodes and agreed credit for each contribution. They also test contact preferences and availability. The term “agreed credit” has the same meaning as “agreed attribution” in FR4 (E15, E29, E35).
- **FR5 coverage:** The US4 scenarios cover each consent form and all four required details. These details are form, intended use, date and evidence location. The consent-blocking scenario follows BR5 and must agree with Section D (E16, E18, E25, E36).
- **Consent design:** The design must include evidence location because FR5 and US4 already require this information. The attributes in E29 do not include evidence location. This action corrects the design without a change to FR5 (E16, E29, E36).
- **Consent scope:** The model connects Consent to Contribution. It does not establish whether one consent can cover two roles on one episode. The group must answer this question before the design assumes one consent per role (E30, E31, E32).

#### Proposed NFR1 extension

The proposed extension retains the existing restriction on internal editorial notes. The group must agree on the other permissions under Q7.

Proposed requirement:

> If the system provides a partner or volunteer view, the view must not display internal editorial notes. Access to private correspondence and sensitive contributor information must follow the agreed permissions for that production role.

Proposed verification:

> The test confirms that the view displays no internal editorial notes. It also compares access to other information with the agreed role permissions.

Q7 must define the information that each role can see. Q9 must establish whether partners and contributors have direct access.

The proposal does not prohibit access to all contributor information. It requires access to follow the agreed permissions.

### Business rules

The review keeps BR5, BR6 and BR7. The scenarios test specific results from these rules.

| ID  | CA1 statement: summary                                                                                     | Decision | Reason                                                                                                                                                                                                                                       | Evidence               |
|-----|------------------------------------------------------------------------------------------------------------|----------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------|
| BR5 | An outstanding permission, contributor confirmation or editorial decision prevents publication of a draft. | Keep.    | The scenario states this rule. The system derives the blocked condition from outstanding items. Section B tests outstanding consent as a contributor-confirmation blocker. The terms must agree with Section D and the baseline GS3 and GS4. | E4, E18, E25, E26, E32 |
| BR6 | Access to information follows production roles.                                                            | Keep.    | The scenario states this rule. NFR1 and GS25 test one access restriction. They do not define or test all role permissions. Production roles describe responsibilities, not job titles.                                                       | E12, E18, E19          |
| BR7 | Partners do not automatically see internal editorial notes.                                                | Keep.    | The scenario states this rule. The word “automatically” does not define a permission to share notes. Q7 must resolve the applicable permissions. The existing NFR1 restriction remains the test basis for provided views.                    | E5, E18, E37           |

### Constraint and assumptions

The review keeps C5 and the three assumptions. A5 and A6 remain provisional until the group answers the related questions.

| ID | CA1 statement: summary                                                           | Decision               | Reason                                                                                                                                                                           | Evidence      |
|----|----------------------------------------------------------------------------------|------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|
| C5 | Contributors can give consent on paper, by email or at the start of a recording. | Keep.                  | The scenario identifies the three forms. Consent has a `form` attribute, not a separate class for each form. For verbal consent, the evidence location identifies the recording. | E2, E19, E27  |
| A2 | Paper forms remain in use. The system records consent and its evidence location. | Keep as an assumption. | Evidence location helps staff find the paper form. This information addresses R3: a record could appear complete while the paper evidence remains separate.                      | E20, E21      |
| A5 | Staff enter information for partners and contributors.                           | Keep as provisional.   | Decision D1 treats partners and contributors as offstage stakeholders. The group must review this assumption if Q9 establishes direct access.                                    | E11, E20, E38 |
| A6 | The production coordinator records proposals, contributors and consent.          | Keep as provisional.   | The scenario does not identify who records consent. The GRASP justification uses the coordinator assumption. Q10 can change that assumption.                                     | E13, E20, E24 |

### Open questions

The review does not answer the open questions. The table shows their effects on Section B.

| ID  | Question                                                                           | Decision       | Effect on Section B                                                                                                                                                                                 | Evidence                    |
|-----|------------------------------------------------------------------------------------|----------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------|
| Q3  | When does reuse, substantial editing or an additional channel require new consent? | Carry forward. | The answer affects consent renewal and the number of consent records for a contribution. It could also affect the required consent attributes. No expiry or renewal rule applies without agreement. | E8, E21 (R2), E22, E31, E39 |
| Q7  | What information can volunteers, contributors and partners see?                    | Carry forward. | The answer defines the permissions for the proposed NFR1 extension.                                                                                                                                 | E22, E37                    |
| Q9  | Do partners and contributors use the system directly?                              | Carry forward. | Direct access would require a review of actor roles and A5. It would also determine which conditional access tests apply.                                                                           | E11, E22, E38               |
| Q10 | Who records consent and proposals?                                                 | Carry forward. | The answer can change the assumed consent-entry actor. The design must then review the related Controller responsibilities.                                                                         | E22, E24                    |
| Q11 | How must the system record contributor concerns, and who can see them?             | Keep deferred. | Decision D2 excludes this process from the first release. Section B does not design that process.                                                                                                   | E14, E22, E38               |

The review also identifies two questions for the Outstanding Questions section. The group must decide whether one consent can cover two roles on one episode. The group must also decide whether the system needs a consent-withdrawal process.

### Review summary

FR4 and FR5 remain unchanged. New Gherkin scenarios improve their test coverage and traceability.

The Consent design must include evidence location to satisfy FR5. Section B and Section D must agree on the test for outstanding consent under BR5.

The proposed NFR1 extension depends on the role permissions under Q7. The review keeps the business rules, constraint and assumptions.

A5 and A6 remain provisional. The Outstanding Questions section will retain the unresolved questions for group decisions.

## Updated Gherkin Scenarios

The new scenarios add test coverage for FR4 and FR5 without changes to those requirements. They also cover outstanding consent and the conditional access restriction in NFR1.

### Existing scenarios

The CA1 feature file contains GS1 to GS5. GS3 and GS4 provide the relevant publication-workflow tests.

Neither scenario directly tests the entry of contributor details or consent evidence. The baseline also has no Gherkin coverage for US3, US4 or US12.

| Existing item                                                             | Review result                                                                                                                          | Action                                                                                                          |
|---------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------|
| GS3: Authorised editor approves a reviewed draft with nothing outstanding | All contributor consents must be confirmed before the successful review. The scenario does not test consent entry or evidence details. | Keep unchanged. Use it as the successful workflow baseline.                                                     |
| GS4: Technically complete draft blocked by an outstanding permission      | The scenario tests an archive-clip permission blocker. Third-party permission is not contributor consent.                              | Keep unchanged. Add GS24 for outstanding contributor consent. Use the same publication and blocked-state terms. |
| US3 / FR4 / UC3                                                           | The baseline has no Gherkin. Required coverage includes roles, agreed credit, contact preferences and availability.                    | Add GS20 and GS21.                                                                                              |
| US4 / FR5 / UC4                                                           | The baseline has no Gherkin. Required coverage includes the three consent forms and all four required consent details.                 | Add GS22 and GS23. Add the missing-consent failure in GS24.                                                     |
| US12 / NFR1                                                               | The baseline has no Gherkin. A provided partner or volunteer view must display no internal editorial notes.                            | Add conditional scenario outline GS25. Do not assume a login requirement.                                       |

The review uses these baseline files. The links identify the original requirements and scenarios.

- **Feature file:** [CA1 production_record.feature](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Features/production_record.feature).
- **User stories:** [CA1 user-stories.md](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Requirements/user-stories.md).
- **Analysis dossier:** [CA1 analysis dossier](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Report/CA1_Analysis_Dossier.md).

### New scenario coverage

The file [`Section_B_Contributors.feature`](../../Requirements_and_Gherkin/Feature_Files/Section_B_Contributors.feature) contains the complete Gherkin scenarios. The scenario numbers GS20 to GS25 come from the Section B range GS20 to GS29 (DEC-06). It uses `Rule:` blocks and tags for requirements, use cases, scenario types and scenario numbers.

The file also uses story tags and applicable rule or constraint tags. These tags connect each scenario to its source requirements.

| Scenario                                                   | Type                              | Test coverage                                                                                                                            | Requirement    | Use case                                                                             | Rule or constraint                       | Evidence                             |
|------------------------------------------------------------|-----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|----------------|--------------------------------------------------------------------------------------|------------------------------------------|--------------------------------------|
| GS20: One contributor has two roles on the same episode    | Boundary                          | A second role does not replace the first. Each contribution retains its agreed credit. Both contributions refer to the same contributor. | FR4            | UC3                                                                                  | CA1 identifies no separate rule for FR4. | E15, E27, E29, E35                   |
| GS21: Different roles and credit across two episodes       | Success                           | Each episode retains its role and agreed credit. The contributor record retains contact preferences and availability.                    | FR4            | UC3                                                                                  | CA1 identifies no separate rule for FR4. | E15, E29, E35                        |
| GS22: Record each supported consent form                   | Success; three examples           | Each consent form retains its form, intended use, date and evidence location.                                                            | FR5            | UC4                                                                                  | C5; A2 for paper evidence                | E16, E19, E20, E36                   |
| GS23: Enter consent after the date given                   | Alternative                       | The consent record retains the actual consent date, not the entry date. The record also retains the other required details.              | FR5            | UC4                                                                                  | C5; A2                                   | E16, E19, E20, E29, E36              |
| GS24: Outstanding contributor consent prevents publication | Failure; cross-section            | The system does not release the completed draft. The system identifies the outstanding consent as the blocker.                           | FR5, FR9, FR12 | UC4 supplies consent information. UC8 reviews the draft. UC11 displays the overview. | BR5                                      | E18, E25, E26; baseline US8 and US11 |
| GS25: Provided restricted views exclude internal notes     | Conditional success; two examples | A provided partner or volunteer view displays no internal editorial notes.                                                               | NFR1           | CA1 has no separate access use case.                                                 | BR6, BR7                                 | E17, E18, E37                        |

### Review decisions and limits

- **Requirement wording:** FR4 and FR5 remain unchanged. The new scenarios improve test coverage. Class responsibilities do not change these requirements.
- **Two roles on one episode:** GS20 tests the boundary case in the Section B instructions. The CA1 FR4 test covers different roles across two episodes. The group must confirm the additional boundary case. GS20 does not decide whether one consent covers both roles.
- **Evidence location:** GS22 tests an evidence location for each consent form. The verbal example identifies a recording and a time range. The paper example identifies a physical form. The scenario does not require an upload, digitisation or automatic evidence check.
- **Later entry of consent:** GS23 assumes the contributor already gave consent. Staff enter that consent later. The scenario does not permit publication without consent or require a separate entry-date attribute. The interpretation follows `dateGiven` in E29.
- **Consent and permission:** GS24 assumes the archive-clip permission is granted and all other contributor consents are confirmed. This test isolates one outstanding consent. It does not replace GS4.
- **Publication authority:** Section B supplies consent information. Section D controls the release decision. A consent record does not automatically approve a draft.
- **Conditional views:** GS25 applies only to views that the system provides. The `@conditional` tag does not automatically skip a test. A future test runner needs a rule to select the applicable examples.
- **Sensitive contributor information:** The Section B instructions request a partner-view test for contributor details. Q7 does not yet define the required permissions. GS25 therefore tests internal editorial notes only. A separate test needs an agreed permission rule.
- **Provisional actor:** A6 assigns data entry to the production coordinator. Q10 must confirm who records consent. The scenarios do not establish final access rights.
- **Shared test data:** The baseline supplies “Episode 2: The Last Currach Builder” and “podcast feed”. “Aoife Murphy” and “Episode 3: Harbour Memories” are fictional test data. The new evidence references and dates are also fictional test data. The group must agree on common test data before integration.

### Decisions required before integration

The group must resolve the dependencies below before final integration. Until then, the scenarios must not assume new operational rules.

| Dependency       | Required decision                                                         | Effect on scenarios                                                                                                                     |
|------------------|---------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|
| Q3               | Conditions that require new consent                                       | New tests can cover reuse, substantial edits and additional channels after agreement. No automatic expiry or validity rule applies yet. |
| Q7               | Access permissions for contributor information and private correspondence | New tests need the agreed permissions for each role.                                                                                    |
| Q9               | Direct access for partners and contributors                               | The answer determines which conditional views and tests apply. No login requirement applies without agreement.                          |
| Q10              | The role that records consent                                             | The scenarios must use a different actor if the coordinator assumption changes.                                                         |
| Multiple roles   | Whether one consent can cover multiple contributions on one episode       | New tests can cover consent scope after agreement. GS20 tests roles and credit only.                                                    |
| Section D        | Common terms for blockers and release decisions                           | GS24 must agree with GS3, GS4 and Section D's updated scenarios.                                                                        |
| Common test data | Shared names, episodes, dates and records                                 | Test-data changes must preserve the behaviour that each scenario tests.                                                                 |
| Scenario numbers | Resolved. DEC-06 gives the numbers GS20 to GS29 to Section B.             | GS20 to GS25 are in use. GS26 to GS29 are free for the Q3 scenarios.                                                                    |

The scenarios do not establish rules for missing-field rejection, consent withdrawal or automatic validation. The group must agree on these behaviours before new tests treat them as requirements.

## System Sequence Diagrams (#22)

| Use case | Diagram                                                                    | System operations                                                     |
|----------|----------------------------------------------------------------------------|-----------------------------------------------------------------------|
| UC3      | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC3_MaintainContributors.puml` | `recordContributor`, `recordContribution`, `updateContributorDetails` |
| UC4      | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC4_RecordConsent.puml`        | `selectContribution` (query), `recordConsent`                         |

`selectContribution` only gives information. It changes nothing. Thus, it has no contract (the same as `selectProposal` in Section A).

## Operation Contracts (#22)

The contract numbers are CB1 to CB4. Rani agreed them in #22 (R20).

### CB1: recordContributor

| Item                | Content                                                                                                                                                                                           |
|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Operation           | `recordContributor(name, contactPreference, availability)`                                                                                                                                        |
| Cross-references    | UC3, FR4, A6 · GS20, GS21                                                                                                                                                                         |
| Preconditions       | The user is the production coordinator (A6).                                                                                                                                                      |
| Postconditions      | A `Contributor` instance `c` was created. `c.name` was set. `c.contactPreference` and `c.availability` were set if given. `c` has no contributions.                                               |
| Controlled failures | Name missing: nothing is created and the name is requested. A contributor with the same name is already recorded: no new contributor is created, and the system shows the existing record (GS20). |

### CB2: recordContribution

| Item                | Content                                                                                                                                                                                                                                                                                                                                  |
|---------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Operation           | `recordContribution(contributor, episode, role, agreedCredit)`                                                                                                                                                                                                                                                                           |
| Cross-references    | UC3, FR4 · GS20, GS21                                                                                                                                                                                                                                                                                                                    |
| Preconditions       | `contributor` and `episode` exist. Section A created the episode (CO2).                                                                                                                                                                                                                                                                  |
| Postconditions      | A `Contribution` instance `k` was created. `k.role` and `k.agreedCredit` were set. `k` was associated with `contributor` and with `episode` (*Episode has Contribution*). Earlier contributions of the contributor and the episode were not changed (GS20, GS21). No `Consent` was created, so the consent for `k` is outstanding (BR5). |
| Controlled failures | Contributor or episode not found: nothing is created. Role missing: nothing is created and the role is requested.                                                                                                                                                                                                                        |
| Note                | A contributor can have two contributions to the same episode (GS20). If one consent can cover both, the answer to Q16 changes this contract.                                                                                                                                                                                           |

### CB3: updateContributorDetails

| Item                | Content                                                                                                                                   |
|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
| Operation           | `updateContributorDetails(contributor, contactPreference, availability)`                                                                  |
| Cross-references    | UC3, FR4 · GS21                                                                                                                           |
| Preconditions       | `contributor` exists.                                                                                                                     |
| Postconditions      | Each item given replaced its previous value. The contributions of the contributor, with their roles and agreed credits, were not changed. |
| Controlled failures | Contributor not found: nothing changes.                                                                                                   |

### CB4: recordConsent

| Item                | Content                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|---------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Operation           | `recordConsent(contribution, form, intendedUse, dateGiven, evidenceLocation)`                                                                                                                                                                                                                                                                                                                                                                                           |
| Cross-references    | UC4, FR5, C5, BR5, A2, A15 · GS22, GS23, GS24                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Preconditions       | `contribution` exists. The user is the production coordinator (A6).                                                                                                                                                                                                                                                                                                                                                                                                     |
| Postconditions      | A `Consent` instance `n` was created. `n.form` was set to paper, email or verbal at the start of a recording (C5). `n.intendedUse`, `n.dateGiven` and `n.evidenceLocation` were set. `n.dateGiven` is the date the contributor gave consent, not the date staff entered it (GS23). `n` was associated with `contribution`. Earlier consents were not changed. The consent for `contribution` is no longer outstanding for all drafts and channels of the episode (A15). |
| Controlled failures | Form not one of the three in C5: nothing is created. Intended use, date given or evidence location missing: nothing is created and the missing item is requested (FR5).                                                                                                                                                                                                                                                                                                 |
| Note                | The domain model has no `Consent.evidenceLocation`. FR5 needs it. Add it when the domain model is updated (#43 3.12).                                                                                                                                                                                                                                                                                                                                                   |

## CRC Cards

The CRC cards give the Section B system operations to classes. The domain classes come from the refined domain model. Section B adds two design classes: a use-case controller and a repository. The GRASP section gives the reasons for these classes.

Each card uses the same layout as Section A (#28). Each responsibility refers to a requirement or a scenario.

### Contributor

| Responsibilities                                          | Collaborators |
|-----------------------------------------------------------|---------------|
| Know its name, contact preference and availability (FR4). | –             |
| Know its contributions to all episodes (GS21).            | Contribution  |
| Change its contact preference and availability (FR4).     | –             |

### Contribution

| Responsibilities                                             | Collaborators        |
|--------------------------------------------------------------|----------------------|
| Know its role and agreed credit for one episode (FR4, GS20). | –                    |
| Know its contributor and its episode.                        | Contributor, Episode |
| Create and keep its consent records (FR5, GS22).             | Consent              |
| Tell if the necessary consent is outstanding (BR5, GS24).    | Consent              |

### Episode (Section A, Rani): rows to add

<!-- The group agreed two items. Episode creates Contribution. Section D examines consent through Episode. Ask Rani to add these rows to her card, or record them in #43. -->

| Responsibilities                                                                                                                                                            | Collaborators             |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------|
| Create and keep its contributions. Keep each role and credit separate (FR4, GS20).                                                                                          | Contribution, Contributor |
| Tell if the necessary consent for a contribution is outstanding. The draft review uses this answer (BR5, GS24).                                                             | Contribution              |
| Give the contributions that have no consent record (`outstandingConsents()`). The draft review and the overview use this list to name each contributor (BR5, GS24, CO11.2). | Contribution              |

### Consent

| Responsibilities                                                                                   | Collaborators |
|----------------------------------------------------------------------------------------------------|---------------|
| Know its form, intended use, date given and evidence location (FR5, C5, GS22).                     | ConsentForm   |
| Keep the date when the contributor gave consent. Do not use the date when staff entered it (GS23). | –             |
| Know the contribution that it is for.                                                              | Contribution  |

Assumption until the client answers Q3: one Consent record for a Contribution satisfies BR5 for all drafts and all channels of the episode (A15, DEC-11).

<!-- One consent is for one contribution until the client answers Q16. If one consent can be for more than one contribution, examine the Creator decision again. -->

### ConsentForm (enumeration)

| Responsibilities                                                                               | Collaborators |
|------------------------------------------------------------------------------------------------|---------------|
| Identify the three permitted forms: paper, email, and verbal at the start of a recording (C5). | –             |

### ContributorConsentController (design class)

| Responsibilities                                                                                                                                       | Collaborators                                              |
|--------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------|
| Receive the Section B system operations: `recordContributor`, `recordContribution`, `updateContributorDetails`, `selectContribution`, `recordConsent`. | –                                                          |
| Create a new Contributor from the data in `recordContributor`.                                                                                         | Contributor                                                |
| Find contributors and episodes. Save new contributors and changed episodes. Section A creates episodes (CO2), not Section B.                           | ContributorRepository, EpisodeRepository (shared, #43 3.6) |
| Send the contribution to Episode. Send the consent to Contribution.                                                                                    | Episode, Contribution                                      |
| Send all rules to the domain objects. Do not make decisions.                                                                                           | Contributor, Episode, Contribution                         |

### ContributorRepository (design class)

| Responsibilities                                                                                      | Collaborators |
|-------------------------------------------------------------------------------------------------------|---------------|
| Keep contributors and find them by identifier.                                                        | Contributor   |
| Find a contributor by name. This makes sure that the system records each person only one time (GS20). | Contributor   |

## GRASP Justification

Each row gives the class that has the responsibility. Each row also tells why this class has it, and why other classes do not.

| Principle                | Assignment                                                                                                                                                                                     | Reason                                                                                                                                                                                                                                                                                                              |
|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Information Expert**   | `Consent` keeps its form, intended use, date and evidence location.                                                                                                                            | These items are the data of Consent (FR5). A question about the details of one consent uses only this data. An example is the location of the evidence.                                                                                                                                                             |
| **Information Expert**   | `Contribution` tells if its necessary consent is outstanding.                                                                                                                                  | Contribution keeps its consent records. BR5 uses this data. No other class keeps these records.                                                                                                                                                                                                                     |
| **Information Expert**   | `Episode` tells if the consent for one of its contributions is outstanding (`hasOutstandingConsent()`). `Episode` also gives the contributions that have no consent (`outstandingConsents()`). | Episode keeps its contributions, and it can ask each contribution. Thus, Section D asks Episode only (GS24). GS24 and CO11.2 must name each contributor. A boolean cannot do this. Thus, Episode also gives the list.                                                                                               |
| **Creator**              | `Episode` creates `Contribution`.                                                                                                                                                              | Episode keeps its contributions. Each contribution is for only one episode. GS20 makes sure that the episode shows the two contributions.                                                                                                                                                                           |
| **Creator**              | `Contribution` creates `Consent`.                                                                                                                                                              | A contributor gives consent for one contribution (FR5). Thus, Contribution records its consents. Contribution also tells if consent is outstanding, so it already keeps the consent records. The answer to Q16 can change this decision.                                                                          |
| **Creator**              | `ContributorConsentController` creates `Contributor`.                                                                                                                                          | No domain class contains contributors. The controller has the data from `recordContributor`. Section A uses the same reason: ProposalController creates Proposal.                                                                                                                                                   |
| **Controller**           | `ContributorConsentController` receives the UC3 and UC4 operations.                                                                                                                            | Each section has one use-case controller. Sections A and D use the same method. This keeps the user interface separate from the domain. It also prevents one controller for all of the system.                                                                                                                      |
| **High Cohesion**        | The controller only receives, finds, sends and saves. The consent rules stay in `Contribution` and `Consent`.                                                                                  | Each class has one purpose. Contributor keeps personal details. Contribution keeps the role, credit and consent. Consent keeps the evidence.                                                                                                                                                                        |
| **Low Coupling**         | Section D examines consent through `Episode.hasOutstandingConsent()` and `Episode.outstandingConsents()`.                                                                                      | Section D already uses Episode. Section D does not use Consent. Section D uses the Contribution objects in the list only to show the contributor name. Thus, most changes to consent (Q3, Q16) have an effect only on Contribution and Consent.                                                                   |
| **Pure Fabrication**     | `ContributorRepository`                                                                                                                                                                        | No domain concept has the responsibility to keep and find contributors. If Contributor has this responsibility, the domain logic and the storage logic become mixed. The search by name keeps one record for each person (GS20).                                                                                    |
| **Protected Variations** | `ConsentForm` enumeration                                                                                                                                                                      | The enumeration limits the type of the form to the three permitted values (C5). Thus, a Consent cannot keep a form that is not permitted. The `recordConsent` contract (CB4) must give the controlled failure for an input form that is not permitted. If the collective adds a form, only the enumeration changes. |

### Rejected alternatives

| Alternative                                                                 | Reason for rejection                                                                                                                                                                                                                                       |
|-----------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| One class for each consent form (PaperConsent, EmailConsent, VerbalConsent) | The forms have the same attributes and the same behaviour. C5 needs only a `form` value. For verbal consent, the evidence location identifies the recording.                                                                                               |
| A `consentStatus` flag on `Draft`                                           | The flag copies the data in the consent records. The flag and the records can then be different. The system calculates the status from the records. Thus, the records are the only source of truth. Section A uses the same reason for the proposal state. |
| `Contributor` creates `Contribution`                                        | Contributor must then know about episodes. This increases coupling. Each contribution is for one episode.                                                                                                                                                  |
| The controller creates `Contribution`                                       | A class that contains contributions (Episode) exists. Thus, the controller has no Creator reason. Also, the controller then does domain work.                                                                                                              |
| The controller or `Contributor` creates `Consent`                           | The controller: a class that contains consents (Contribution) exists. Contributor: a consent is for one use on one episode. Contributor does not know this context.                                                                                        |
| Section D asks each `Contribution`                                          | Section D must then use Contribution and Episode. This increases coupling. A change to consent can then have an effect on Section D.                                                                                                                       |

### Operation-to-responsibility map

| System operation                | Controller                   | Expert or creator                      | Objects that the operation creates or changes                                          |
|---------------------------------|------------------------------|----------------------------------------|----------------------------------------------------------------------------------------|
| `recordContributor(...)`        | ContributorConsentController | ContributorConsentController (creates) | A new Contributor                                                                      |
| `recordContribution(...)`       | ContributorConsentController | Episode (creates)                      | A new Contribution, linked to the Contributor and the Episode                          |
| `updateContributorDetails(...)` | ContributorConsentController | Contributor (expert)                   | The contact preference and availability of the Contributor                             |
| `selectContribution(...)`       | ContributorConsentController | Episode (expert)                       | None. This is a query. It has no contract (the same as `selectProposal` in Section A). |
| `recordConsent(...)`            | ContributorConsentController | Contribution (creates)                 | A new Consent, linked to the Contribution                                              |

## Access and Permission Responsibilities

This section records only the access rules that the baseline gives or assumes. All other cells are open until the group gets the answers to Q7 and Q9. Q9 is only about partners and contributors. The technical volunteer is already an actor (UC6, G6). This section does not add new rules.

Access follows production roles. Access does not follow people (BR6). One person can have more than one role. That person gets the access of all of their roles (E12).

### Roles

| Production role                      | Source        | Direct access to the system                                                                        |
|--------------------------------------|---------------|----------------------------------------------------------------------------------------------------|
| Production coordinator               | A6, UC3, UC4  | Yes (A6). This is provisional until the answer to Q10.                                             |
| Proposal editor or authorised editor | UC2, UC8      | Yes (the actors in Sections A and D).                                                              |
| Volunteer                            | NFR1, UC6, G6 | Yes. The technical volunteer is an actor (UC6, G6). This is provisional.                           |
| Partner organisation                 | A5, D1        | No. Staff enter the information for partners (A5). This is provisional until the answer to Q9.     |
| Contributor                          | A5, D1        | No. Staff enter the information for contributors (A5). This is provisional until the answer to Q9. |

### Permission matrix (agreed items only)

"Open" means that the baseline does not give a rule. "If provided" means that the rule applies only to a partner view or volunteer view that the system provides (NFR1, Q9). "Not by default" means that the baseline gives a default rule, but Q7 can give a permission for some roles (BR7, E5).

| Information                                            | Coordinator                                | Editor                                                         | Volunteer                                      | Partner                                                                                               | Contributor | Basis            |
|--------------------------------------------------------|--------------------------------------------|----------------------------------------------------------------|------------------------------------------------|-------------------------------------------------------------------------------------------------------|-------------|------------------|
| Contributor name, role and agreed credit               | Yes. The coordinator records it (A6, UC3). | Yes. The editor examines the credits before publication (BR3). | Open                                           | Open                                                                                                  | Open        | FR4, BR3, A6, Q7 |
| Contact preference and availability                    | Yes. The coordinator records it (A6, UC3). | Open                                                           | Open                                           | Open                                                                                                  | Open        | FR4, A6, Q7, R5  |
| Consent form, intended use, date and evidence location | Yes. The coordinator records it (A6, UC4). | Open                                                           | Open                                           | Open                                                                                                  | Open        | FR5, A6, Q7      |
| Outstanding consent for an episode                     | Yes. The overview shows it (GS24, UC11).   | Yes. The editor uses it in the draft review (BR5, GS24).       | Open                                           | Open                                                                                                  | Open        | BR5, GS24        |
| Private correspondence                                 | Open                                       | Open                                                           | Not by default. This depends on the role (Q7). | Open                                                                                                  | Open        | E5, Q7           |
| Internal editorial notes                               | Open                                       | Open                                                           | No, if provided (NFR1)                         | Not by default (BR7)                                                                                  | Open        | NFR1, BR7, GS25  |
| Production progress                                    | Yes (UC11)                                 | Open                                                           | Open                                           | Yes (A3). Staff share it until the answer to Q9. A provided view does not show internal notes (US12). | Open        | A3, US12, NFR1   |

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

| Question           | Effect on this section                                                                                          |
|--------------------|-----------------------------------------------------------------------------------------------------------------|
| Q7                 | The answer gives a value to each "Open" cell in the matrix.                                                     |
| Q9                 | The answer tells if partners and contributors have direct access. It also tells which "if provided" rows apply. |
| Q10                | The answer tells if the coordinator is the role that records contributors and consent.                          |
| Q11 (deferred, D2) | The answer tells who can see contributor concerns. This item is not in the scope of the first release.          |

## Outstanding Questions

Each question asks about the work of Kerry Community Media Collective, and the scenario does not answer it. The group does not send these questions to the lecturer. Instead, as with Q14 and Q15 (DEC-05), the group agrees a working assumption for each question, shown in the "Design until the answer" column, and records the agreement in the decision log (DEC-__). The design follows these assumptions and does not add any other rule. If the client later gives an answer, the group changes the affected decision.

### Questions for the client

| ID    | Question for the client                                                                                            | Reason for the question                                                              | Effect on Section B                                                                       | Design until the answer                                                                                                                          | Status            |
|-------|--------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|-------------------|
| Q3    | When does the collective ask for new consent? For example, for a reused recording, a large edit, or a new channel. | The collective can use an episode again without valid consent (R2).                  | Consent attributes, GS22 to GS24                                                          | No expiry rule. No renewal rule. One consent for each contribution. One consent record satisfies BR5 for all drafts and channels of the episode. | Open              |
| Q7    | Which information can volunteers, contributors and partners see?                                                   | Incorrect access can show sensitive contributor information (R5).                    | All "Open" cells in the access matrix                                                     | The design applies only the agreed rules (NFR1, BR7, E5).                                                                                        | Open              |
| Q9    | Do partners and contributors use the system directly? Or do staff enter all information for them?                  | If they have direct access, they become actors. This changes the users of each view. | Roles table, A5, GS25                                                                     | Staff enter the information for them (A5). This is provisional.                                                                                  | Open              |
| Q10   | Which role records consent?                                                                                        | The SSD actor and the user of the controller depend on the answer.                   | UC3 and UC4 actor, A6                                                                     | The production coordinator records consent (A6). This is provisional.                                                                            | Open              |
| Q16 | Can one consent be for two roles of one person on one episode? For example, presenter and performer.               | The answer tells if Consent is for one Contribution or for more than one.            | The multiplicity between Consent and Contribution, the Creator decision for Consent, GS20 | One consent for each contribution. Contribution creates Consent.                                                                                 | Open (new in CA2) |
| Q17 | Can a contributor withdraw consent? What does the collective do then?                                              | A withdrawal can stop an episode that is planned or already published.               | Consent, BR5, the Section D publication workflow                                          | The design has no withdrawal procedure.                                                                                                          | Open (new in CA2) |
| Q11   | How does the collective record contributor concerns? Who can see them?                                             | Decision D2 deferred this item.                                                      | Not in the first release                                                                  | Not in the scope (D2).                                                                                                                           | Deferred          |

### Use of the answers

| If the answer is...                                       | Necessary change                                                                                              |
|-----------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
| Q3 gives conditions for renewal                           | Add consent attributes or a renewal rule. Add new scenarios with the numbers GS26 to GS29.                    |
| Q7 gives the permissions                                  | Fill the open cells in the access matrix. Give the access responsibility to a class. Add tests.               |
| Q9 tells that partners or contributors have direct access | Add them as actors. Examine A5 and GS25 again.                                                                |
| Q10 gives a different role                                | Change the SSD actor and the text of the scenarios.                                                           |
| Q16 is "yes"                                            | Change Consent so that it can be for more than one contribution. Examine the Creator decision and GS20 again. |
| Q17 is "yes"                                            | Add a withdrawal operation. Agree its effect on publication with Section D.                                   |

### Record of questions to the client
The group resolves open questions through recorded decisions and assumptions (DEC-05).

| ID    | Answer | Decision log |
|-------|----------------------|--------|--------------------|--------------|
| Q3    | Assumption: The group adopted an assumption: one consent covers all drafts and channels (A15). | DEC-11 |
| Q7    | Open. Access follows the agreed role permissions; the "Open" cells in the access matrix stay open. | DEC-12 |
| Q9    | Open. NFR1 applies only if a partner or volunteer view is provided. | DEC-12 |
| Q10   | Open. | – |
| Q16   | Open. | – |
| Q17   | Open. | – |