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

The review uses four tests:

- **Consistency:** The requirement agrees with the domain model, glossary and user stories.
- **Clarity:** The required behaviour is clear. The requirement does not depend on a specific class design.
- **Verifiability:** The verification method tests all information and behaviour that the requirement specifies.
- **Traceability:** References connect the requirement to the applicable rules, risks and scenarios.

An unresolved question is not a reason to assume a new rule. The Outstanding Questions section will record the question for a group decision.

A requirement does not need a change only because it has no Gherkin scenario. This review keeps FR4 and FR5 unchanged. The Updated Gherkin Scenarios section gives their new test coverage.

### Functional and non-functional requirements

The CA1 statements below are summaries, not direct quotations. The decisions distinguish requirement changes from additional tests and class-design work.

| ID | CA1 statement: summary | Decision | Reason | Evidence |
|---|---|---|---|---|
| FR4 | Staff can record contributor roles, contact preferences, availability and agreed attribution for episodes. | Keep. Add Gherkin scenarios. | FR4 identifies the required information. CA1 gives a verification method but no Gherkin scenario. New scenarios cover roles, agreed credit, contact preferences and availability. Class responsibilities do not require a change to FR4. | E15, E27, E29, E33, E35 |
| FR5 | Staff can record consent for an episode, with its form, intended use, date and evidence location. | Keep. Add Gherkin scenarios. | FR5 identifies the required consent information. CA1 gives a verification method but no Gherkin scenario. New scenarios cover the three consent forms and all required details. A separate test applies BR5 when required consent remains outstanding. | E16, E18, E33, E34, E36 |
| NFR1 | A partner or volunteer view displays no internal editorial note, if the system provides that view. | Propose an extension. Keep the condition. | NFR1 covers internal editorial notes. E1 and R5 also identify sensitive contributor information. E5 identifies private correspondence that volunteers must not see. Q7 must define other access permissions. Q9 must resolve direct access. | E1, E5, E17, E21, E37 |

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

| ID | CA1 statement: summary | Decision | Reason | Evidence |
|---|---|---|---|---|
| BR5 | An outstanding permission, contributor confirmation or editorial decision prevents publication of a draft. | Keep. | The scenario states this rule. The system derives the blocked condition from outstanding items. Section B tests outstanding consent as a contributor-confirmation blocker. The terms must agree with Section D and the baseline GS3 and GS4. | E4, E18, E25, E26, E32 |
| BR6 | Access to information follows production roles. | Keep. | The scenario states this rule. NFR1 and GS11 test one access restriction. They do not define or test all role permissions. Production roles describe responsibilities, not job titles. | E12, E18, E19 |
| BR7 | Partners do not automatically see internal editorial notes. | Keep. | The scenario states this rule. The word “automatically” does not define a permission to share notes. Q7 must resolve the applicable permissions. The existing NFR1 restriction remains the test basis for provided views. | E5, E18, E37 |

### Constraint and assumptions

The review keeps C5 and the three assumptions. A5 and A6 remain provisional until the group answers the related questions.

| ID | CA1 statement: summary | Decision | Reason | Evidence |
|---|---|---|---|---|
| C5 | Contributors can give consent on paper, by email or at the start of a recording. | Keep. | The scenario identifies the three forms. Consent has a `form` attribute, not a separate class for each form. For verbal consent, the evidence location identifies the recording. | E2, E19, E27 |
| A2 | Paper forms remain in use. The system records consent and its evidence location. | Keep as an assumption. | Evidence location helps staff find the paper form. This information addresses R3: a record could appear complete while the paper evidence remains separate. | E20, E21 |
| A5 | Staff enter information for partners and contributors. | Keep as provisional. | Decision D1 treats partners and contributors as offstage stakeholders. The group must review this assumption if Q9 establishes direct access. | E11, E20, E38 |
| A6 | The production coordinator records proposals, contributors and consent. | Keep as provisional. | The scenario does not identify who records consent. The GRASP justification uses the coordinator assumption. Q10 can change that assumption. | E13, E20, E24 |

### Open questions

The review does not answer the open questions. The table shows their effects on Section B.

| ID | Question | Decision | Effect on Section B | Evidence |
|---|---|---|---|---|
| Q3 | When does reuse, substantial editing or an additional channel require new consent? | Carry forward. | The answer affects consent renewal and the number of consent records for a contribution. It could also affect the required consent attributes. No expiry or renewal rule applies without agreement. | E8, E21 (R2), E22, E31, E39 |
| Q7 | What information can volunteers, contributors and partners see? | Carry forward. | The answer defines the permissions for the proposed NFR1 extension. | E22, E37 |
| Q9 | Do partners and contributors use the system directly? | Carry forward. | Direct access would require a review of actor roles and A5. It would also determine which conditional access tests apply. | E11, E22, E38 |
| Q10 | Who records consent and proposals? | Carry forward. | The answer can change the assumed consent-entry actor. The design must then review the related Controller responsibilities. | E22, E24 |
| Q11 | How must the system record contributor concerns, and who can see them? | Keep deferred. | Decision D2 excludes this process from the first release. Section B does not design that process. | E14, E22, E38 |

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

| Existing item | Review result | Action |
|---|---|---|
| GS3: Authorised editor approves a reviewed draft with nothing outstanding | All contributor consents must be confirmed before the successful review. The scenario does not test consent entry or evidence details. | Keep unchanged. Use it as the successful workflow baseline. |
| GS4: Technically complete draft blocked by an outstanding permission | The scenario tests an archive-clip permission blocker. Third-party permission is not contributor consent. | Keep unchanged. Add GS10 for outstanding contributor consent. Use the same publication and blocked-state terms. |
| US3 / FR4 / UC3 | The baseline has no Gherkin. Required coverage includes roles, agreed credit, contact preferences and availability. | Add GS6 and GS7. |
| US4 / FR5 / UC4 | The baseline has no Gherkin. Required coverage includes the three consent forms and all four required consent details. | Add GS8 and GS9. Add the missing-consent failure in GS10. |
| US12 / NFR1 | The baseline has no Gherkin. A provided partner or volunteer view must display no internal editorial notes. | Add conditional scenario outline GS11. Do not assume a login requirement. |

The review uses these baseline files. The links identify the original requirements and scenarios.

- **Feature file:** [CA1 production_record.feature](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Features/production_record.feature).
- **User stories:** [CA1 user-stories.md](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Requirements/user-stories.md).
- **Analysis dossier:** [CA1 analysis dossier](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Report/CA1_Analysis_Dossier.md).

### New scenario coverage

The file `ca2-contributors-consent.feature` contains the complete Gherkin scenarios. It uses `Rule:` blocks and tags for requirements, use cases, scenario types and scenario numbers.

The file also uses story tags and applicable rule or constraint tags. These tags connect each scenario to its source requirements.

| Scenario | Type | Test coverage | Requirement | Use case | Rule or constraint | Evidence |
|---|---|---|---|---|---|---|
| GS6: One contributor has two roles on the same episode | Boundary | A second role does not replace the first. Each contribution retains its agreed credit. Both contributions refer to the same contributor. | FR4 | UC3 | CA1 identifies no separate rule for FR4. | E15, E27, E29, E35 |
| GS7: Different roles and credit across two episodes | Success | Each episode retains its role and agreed credit. The contributor record retains contact preferences and availability. | FR4 | UC3 | CA1 identifies no separate rule for FR4. | E15, E29, E35 |
| GS8: Record each supported consent form | Success; three examples | Each consent form retains its form, intended use, date and evidence location. | FR5 | UC4 | C5; A2 for paper evidence | E16, E19, E20, E36 |
| GS9: Enter consent after the date given | Alternative | The consent record retains the actual consent date, not the entry date. The record also retains the other required details. | FR5 | UC4 | C5; A2 | E16, E19, E20, E29, E36 |
| GS10: Outstanding contributor consent prevents publication | Failure; cross-section | The system does not release the completed draft. The system identifies the outstanding consent as the blocker. | FR5, FR9, FR12 | UC4 supplies consent information. UC8 reviews the draft. UC11 displays the overview. | BR5 | E18, E25, E26; baseline US8 and US11 |
| GS11: Provided restricted views exclude internal notes | Conditional success; two examples | A provided partner or volunteer view displays no internal editorial notes. | NFR1 | CA1 has no separate access use case. | BR6, BR7 | E17, E18, E37 |

### Review decisions and limits

- **Requirement wording:** FR4 and FR5 remain unchanged. The new scenarios improve test coverage. Class responsibilities do not change these requirements.
- **Two roles on one episode:** GS6 tests the boundary case in the Section B instructions. The CA1 FR4 test covers different roles across two episodes. The group must confirm the additional boundary case. GS6 does not decide whether one consent covers both roles.
- **Evidence location:** GS8 tests an evidence location for each consent form. The verbal example identifies a recording and a time range. The paper example identifies a physical form. The scenario does not require an upload, digitisation or automatic evidence check.
- **Later entry of consent:** GS9 assumes the contributor already gave consent. Staff enter that consent later. The scenario does not permit publication without consent or require a separate entry-date attribute. The interpretation follows `dateGiven` in E29.
- **Consent and permission:** GS10 assumes the archive-clip permission is granted and all other contributor consents are confirmed. This test isolates one outstanding consent. It does not replace GS4.
- **Publication authority:** Section B supplies consent information. Section D controls the release decision. A consent record does not automatically approve a draft.
- **Conditional views:** GS11 applies only to views that the system provides. The `@conditional` tag does not automatically skip a test. A future test runner needs a rule to select the applicable examples.
- **Sensitive contributor information:** The Section B instructions request a partner-view test for contributor details. Q7 does not yet define the required permissions. GS11 therefore tests internal editorial notes only. A separate test needs an agreed permission rule.
- **Provisional actor:** A6 assigns data entry to the production coordinator. Q10 must confirm who records consent. The scenarios do not establish final access rights.
- **Shared test data:** The baseline supplies “Episode 2: The Last Currach Builder” and “podcast feed”. “Aoife Murphy” and “Episode 3: Harbour Memories” are fictional test data. The new evidence references and dates are also fictional test data. The group must agree on common test data before integration.

### Decisions required before integration

The group must resolve the dependencies below before final integration. Until then, the scenarios must not assume new operational rules.

| Dependency | Required decision | Effect on scenarios |
|---|---|---|
| Q3 | Conditions that require new consent | New tests can cover reuse, substantial edits and additional channels after agreement. No automatic expiry or validity rule applies yet. |
| Q7 | Access permissions for contributor information and private correspondence | New tests need the agreed permissions for each role. |
| Q9 | Direct access for partners and contributors | The answer determines which conditional views and tests apply. No login requirement applies without agreement. |
| Q10 | The role that records consent | The scenarios must use a different actor if the coordinator assumption changes. |
| Multiple roles | Whether one consent can cover multiple contributions on one episode | New tests can cover consent scope after agreement. GS6 tests roles and credit only. |
| Section D | Common terms for blockers and release decisions | GS10 must agree with GS3, GS4 and Section D's updated scenarios. |
| Common test data | Shared names, episodes, dates and records | Test-data changes must preserve the behaviour that each scenario tests. |
| Scenario numbers | Whether another member uses GS6 to GS11 outside the reviewed baseline | The group must confirm unique numbers before merge. The current numbers follow the Section B plan. |

The scenarios do not establish rules for missing-field rejection, consent withdrawal or automatic validation. The group must agree on these behaviours before new tests treat them as requirements.


## CRC Cards

## GRASP Justification

## Access and Permission Responsibilities

## Outstanding Questions
