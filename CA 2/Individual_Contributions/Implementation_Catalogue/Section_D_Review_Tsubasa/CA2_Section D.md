# Section D: Review and publication

Member 4: Tsubasa Hirose  
CA1 source: Rani Wheeza's analysis dossier (T00244793)

Evidence references ED01 to ED41 identify items in [Evidence_Document_Source_Material.md](Evidence_Document_Source_Material.md). This section reviews the CA1 analysis for review, publication and correction. It also identifies information that the CA1 analysis does not state.

The scenarios are in [Section_D_Review.feature](../../../Requirements_and_Gherkin/Feature_Files/Section_D_Review.feature). The CRC cards and GRASP notes are in this catalogue. The system sequence diagrams are in the diagrams folder.

## Problem statement

Rani's problem statement describes records held in different places, including review notes and publication information. It also identifies the need to restrict editorial discussion and sensitive contributor information by role (ED01). The stated purpose includes the record from proposal to publication and any later correction (ED09).

Review comments are recorded in separate email threads (ED02). A requested change could be missed. The dossier marks that missed change as inferred, not as a confirmed frequency (ED03). Publication dates change, and a partner wants an explanation (ED04). A finished draft can be blocked by an outstanding permission, contributor confirmation or editorial decision (ED05). Staff must distinguish a metadata correction from a new audio version (ED06).

The outcomes this section serves are publication readiness, publication information and version clarity (ED07).

## Scope of this section

### In this section

| ID | Name | Evidence | Priority |
|---|---|---|---|
| UC8 | Review a draft. The authorised editor records the outcome. | ED27 | Must |
| UC9 | Record or change a publication date, keeping the earlier date and the reason. | ED27 | Should |
| UC10 | Record a post-publication correction or replacement, identified as a metadata correction or a new audio version. | ED27 | Should |

S6, S8 and S9 are the scope items for these use cases (ED10).

### Outside this section

| Item | Owner | Why it is outside |
|---|---|---|
| Recording a proposal and its editorial decision | Section A | UC2 records the proposal decision. UC8 starts at review of a draft (ED26, ED27). |
| Creating and versioning drafts | Section C | UC6 records source recordings and draft versions. An approved draft is not assumed to be the version published (ED26). |
| Recording contributor consent | Section B | UC4 records consent. The Section D scenarios read whether consent is confirmed. They do not record it (ED26). |
| Recording permissions for material | Section C | UC7 and FR8. Section C says record permissions for material used. |
| The production overview | Shared | UC11 and FR12 list several overview categories (ED19, ED26). GS4 shows one blocked draft. This section adds no overview scenario. |
| Recording contributor concerns before or after publication | Deferred (RD-17) | The scenario says concerns may be raised and a consistent record is wanted, but gives no process, owner or visibility rule. Building it would invent policy (Q11). Remains deferred (RD-17) |

## Requirements Review

This review covers the CA1 requirements that affect Section D. For each item, the review gives a decision and a reason.

### Review method

Requirements, business rules and assumptions were reviewed for consistency, clarity, verifiability and traceability against the CA1 baseline without introducing unconfirmed rules.

### Functional requirements

The CA1 statements below are summaries, not direct quotations. The decisions distinguish requirement changes from additional tests.

| ID | CA1 statement: summary | Decision | Reason | Evidence |
|---|---|---|---|---|
| FR9 | An authorised editor can record a draft review as approved, returned for changes, postponed or withdrawn, with the date, the person and the comments kept against that draft. | Keep. Add Gherkin scenarios. | FR9 names the four outcomes and the fields to keep. CA1 verifies them by recording each outcome. GS3 and GS4 already cover approval and a blocked draft. GS30, GS31, GS32 and GS33 cover the remaining acceptance criteria of US8. | ED15, ED37, ED40 |
| FR10 | Staff can record an episode's publication date and channel, and the reason when the date changes. | Keep. Add the recording scenario. | FR10 states the date, the channel and the reason for a change. It does not state that the system rejects a date. US9's acceptance criterion covers the moved date. GS34 covers the first recording of the date and channel. GS5 covers the change. | ED16, ED21, ED38 |
| FR11 | An authorised editor can record a post-publication correction or replacement, linked to the original publication, identified as a metadata correction or a new audio version, with the date and the person. | Keep. Add Gherkin scenarios. | FR11's verification is to record one of each and check the link, the type, the person and the date. CA1 has no Gherkin for UC10. GS35 and GS36 add that check. Q6 leaves the handling open, so the scenarios do not state what a correction triggers. | ED17, ED21, ED31, ED39 |
| FR8 | The technical editor can record permission status for music, archive clips and external material, and the draft shows which permissions are outstanding. | Keep. | Section D does not record the permission. GS3 and GS30 include a granted archive-clip permission. GS4 shows an outstanding one as the reason the draft is not released. | ED18 |
| FR12 | The production coordinator can see the listed production categories and what is blocking each draft. | Keep. | GS4 shows one draft blocked by an outstanding permission. The scenario does not cover the other FR12 categories. This review adds no overview scenario. | ED19 |

FR10 and FR11 remain Should. The dossier gives that priority because the process can still run without them in a first release, while the scenario names a real problem for each (ED20).

### Decision

| ID | Decision | Reason |
|---|---|---|
| UC8 | Keep | The use case records approval, returned for changes, postponed and withdrawn. A draft returned for changes and not reviewed again is shown as blocked (BR5, DEC-05). The scenarios are GS3, GS4 and GS30 to GS33.|
| UC9 | Keep | The use case records the publication date, the channel and the reason for a change. No rule says the system rejects a publication date. The scenarios are GS34 and GS5.|
| UC10 | Keep | The use case records a correction linked to the original publication, with its type, the person and the date. What happens next stays open (Q6). The scenarios are GS35 and GS36.|

### Business rules

The review keeps BR3, BR4, BR5 and BR8. The scenarios test specific results from these rules.

| ID | CA1 statement: summary | Decision | Reason | Evidence |
|---|---|---|---|---|
| BR3 | An authorised editor reviews a draft, its title, description, credits, permissions and intended channel before publication. | Keep. | The scenario states this rule. GS3 records approval by an authorised editor for one channel. The scenarios do not decide who may approve each programme type or channel. | ED23, ED25 |
| BR4 | A review outcome is approved, returned for changes, postponed or withdrawn. | Keep. | The scenario states these four outcomes. GS3, GS31, GS32 and GS33 record one each. | ED23, ED15 |
| BR5 | An outstanding permission, contributor confirmation or editorial decision blocks publication. | Keep. | The scenario states this rule. GS4 shows a technically complete draft not released, and shown as blocked by an outstanding archive-clip permission. The CA1 model states that the draft is not released. It does not state that the system prevents the editor from recording approval while something is outstanding. GS4 does not add that prevention. GS31 records the outcome "returned for changes". Until that draft is reviewed again, the outstanding editorial decision is shown as blocked (BR5, DEC-05). GS32 and GS33 do not show the draft as blocked.| ED05, ED23, ED28 |
| BR8 | A metadata correction can be distinguished from a new audio version. | Keep. | The rule is implied. The dossier says how the two differ is not defined. GS35 and GS36 show the recorded type. They do not define the difference beyond that type. | ED06, ED23, ED32 |

GS31, GS32 and GS33 show the draft as not approved and not ready to be scheduled. Only GS31 shows the draft as blocked. GS32 and GS33 do not.

### Assumptions

The review keeps the five assumptions as assumptions. The scenarios do not confirm them.

| ID | CA1 statement: summary | Decision | Reason | Evidence |
|---|---|---|---|---|
| A7 | Each episode in a series has its own review and publication record. | Keep as an assumption. | The scenarios use one episode, "Episode 2: The Last Currach Builder". They do not test a series. | ED24, ED29 |
| A8 | Only an authorised editor records a release decision. | Keep as an assumption. | GS3, GS35 and GS36 use the authorised editor. They do not test another role recording the release. Q5 remains open. | ED24, ED25 |
| A9 | Approval to publish applies per channel. | Keep as an assumption. | GS3 approves the draft for the "podcast feed" channel, as in the CA1 scenario. The scenario does not test approval for every channel at once, and it does not confirm A9. | ED24, ED30 |
| A11 | An approved draft is a status of a draft, not a separate item. | Keep as an assumption. | The scenarios show the draft as approved. They do not introduce a separate approved-version item. How versions relate remains Q4. | ED24, ED35 |
| A14 | If a replacement is modelled as a Draft and then published, it is reviewed through UC8 before publication. | Keep as an assumption. | The baseline records this assumption (RD-08). GS35 and GS36 do not test it. Q6 stays open. | analysis-baseline.md, A14 |

### Open questions

The review does not answer the open questions. The table shows their effects on Section D.

| ID | Question | Decision | Effect on Section D | Evidence |
|---|---|---|---|---|
| Q5 | Who may approve each programme type and publication channel? | Carry forward. | The scenarios say "authorised editor". They do not name the person or the programme types that person may approve. | ED08, ED25, ED41 |
| Q6 | How are corrections, replacements and withdrawal requests handled? | Carry forward. | GS35 and GS36 record the correction and its type. They do not state what happens next. GS33 records the review outcome "withdrawn". It does not state how a withdrawal request is handled. | ED08, ED25, ED31, ED39 |
| Q7 | What may volunteers, contributors and partners see? | Carry forward. | No scenario tests who can see a review comment. A visibility test needs the agreed permissions. | ED25, ED33 |
| Q13 | Can the proposal editor and the authorised editor be the same person? | Carry forward. | The scenarios use the authorised editor for draft review. They do not decide whether that person may also be the proposal editor. | ED12, ED14, ED25 |

## Usecase

### UC8 - Review a draft. The authorised editor records the outcome

| Field | Content |
|---|---|
| Primary actor | Authorised editor |
| Goal | Record the outcome and comments against the draft, so the release decision is the editor's. A draft with nothing outstanding is not approved automatically. |
| Preconditions | A draft has been recorded (UC6). Outstanding consent or permission need not be cleared before an outcome is recorded.|
| Trigger | The authorised editor reviews the draft and records an outcome. |
| Related | FR9, FR8, S6, G8, BR3, BR4, BR5, DEC-05|

**Main success flow (Authorised editor approves a reviewed draft with nothing outstanding)**

| Actor | System |
|---|---|
| 1. Selects the draft to review | |
| | 2. Shows that every contributor consent for the episode is confirmed and that the archive-clip permission is granted |
| 3. Records the outcome "approved" for a publication channel | |
| | 4. Records the approval for that channel with the editor's name and the date, and shows the draft as approved and ready to be scheduled |

**Principal extensions**

| Point | Condition | Outcome |
|---|---|---|
| 2a Outstanding permission | An archive-clip permission is still outstanding when the editor reviews the draft for publication | Not released. Shown as blocked by the outstanding archive-clip permission. |
| 2b No outcome recorded | No review outcome has been recorded, and the production coordinator views the draft | Shown as awaiting review. Not shown as approved or ready to be scheduled. |
| 3a Returned for changes | The editor records "returned for changes" with a comment | Shown as returned for changes, and as blocked by an outstanding editorial decision. The comment, name and date are kept. |
| 3b Postponed | The editor records "postponed" with a comment | Shown as postponed. Not shown as blocked. The comment, name and date are kept. |
| 3c Withdrawn | The editor records "withdrawn" with a comment | Shown as withdrawn. Not shown as blocked. The comment, name and date are kept. |

**Postconditions:** The approval is kept for that channel with the editor's name and the date. The draft is shown as approved and ready to be scheduled.

## Updated Gherkin Scenarios

The new scenarios add test coverage for FR9, FR10 and FR11 without changes to those requirements.

### Existing scenarios

The CA1 feature file contains GS1 to GS5. GS3, GS4 and GS5 are the scenarios this section keeps. Their identifiers stay the same (ED30, ED36).

| Existing item | Review result | Action |
|---|---|---|
| GS3: Authorised editor approves a reviewed draft with nothing outstanding | The draft is approved for the "podcast feed" channel with the editor's name and the date, and is shown as ready to be scheduled. Consent and the archive-clip permission are given as already settled. | Keep the scenario and the identifier GS3. |
| GS4: Technically complete draft blocked by an outstanding permission | The draft is not released and is shown as blocked by the outstanding archive-clip permission. | Keep the scenario and the identifier GS4. |
| GS5: Publication date moved because another programme is urgent | The episode moves from 14 November to 28 November. The record keeps the earlier date and the reason. | Keep the identifier GS5. The scenario now also names the "podcast feed" channel and quotes the reason already given in the When step. |
| US8 / FR9 / UC8 | CA1 Gherkin covers approval and the permission failure. US8 also accepts returned, postponed and withdrawn, and rejects automatic approval. | Add GS30, GS31, GS32 and GS33. |
| US9 / FR10 / UC9 | CA1 Gherkin covers the moved date. FR10 also states the first recording of the date and channel. | Add GS34. Do not add a failure scenario. |
| US10 / FR11 / UC10 | CA1 has no Gherkin. The acceptance criteria are the link, the type, the person and the date. | Add GS35 and GS36. Do not add a failure scenario. |

The review uses these baseline files:

- **Feature file:** [CA1 production_record.feature](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Features/production_record.feature).
- **User stories:** [CA1 user-stories.md](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Requirements/user-stories.md).
- **Analysis dossier:** [CA1 analysis dossier](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service/blob/HEAD/CA%201/Report/CA1_Analysis_Dossier.md).

### New scenario coverage

[Section_D_Review.feature](../../../Requirements_and_Gherkin/Feature_Files/Section_D_Review.feature) contains the Section D scenarios. It uses `Rule:` blocks and tags for requirements, use cases, scenario types and scenario numbers.

New scenarios start at GS30. The group must confirm the numbers before the feature files are merged.

| Scenario | Type | Test coverage | Requirement | Use case | Rule or constraint | Evidence |
|---|---|---|---|---|---|---|
| GS3: Authorised editor approves a reviewed draft with nothing outstanding | Success | The authorised editor's approval, name and date are recorded for the named channel. The draft is shown as ready to be scheduled. | FR9 | UC8 | BR3 | ED15, ED27, ED30, ED40 |
| GS4: Technically complete draft blocked by an outstanding permission | Failure | The draft is not released. It is shown as blocked by the outstanding archive-clip permission. | FR8, FR9, FR12 | UC8 | BR5 | ED18, ED19, ED23, ED28 |
| GS30: A draft with nothing outstanding is not approved automatically | Boundary | With consent confirmed, permission granted and no review outcome, the draft is shown as awaiting review. It is not shown as approved or ready to be scheduled. | FR9 | UC8 | BR3 | ED27, ED28, ED37, ED40 |
| GS31: Authorised editor returns a draft for changes | Alternative | The outcome "returned for changes", the comment, the editor's name and the date are kept. The draft is shown as blocked by an outstanding editorial decision, not approved and not ready to be scheduled. | FR9 | UC8 | BR4, BR5 | ED15, ED23, ED37 |
| GS32: Authorised editor postpones a draft | Alternative | The outcome "postponed", the comment, the editor's name and the date are kept. The draft is not approved and not ready to be scheduled. | FR9 | UC8 | BR4 | ED15, ED23, ED37 |
| GS33: Authorised editor records a draft as withdrawn | Alternative | The outcome "withdrawn", the comment, the editor's name and the date are kept. The draft is not approved and not ready to be scheduled. | FR9 | UC8 | BR4 | ED15, ED23, ED37 |
| GS34: Publication date and channel are recorded | Success | An approved draft that is ready to be scheduled is shown as scheduled for 14 November on the "podcast feed" channel. | FR10 | UC9 | CA1 states no separate rejection rule for FR10. | ED16, ED27, ED38 |
| GS5: Publication date moved because another programme is urgent | Alternative | The date changes from 14 November to 28 November on the same channel. The earlier date and the reason "another programme has become urgent" are kept. | FR10 | UC9 | CA1 states no separate rejection rule for FR10. | ED04, ED16, ED30, ED38 |
| GS35: A metadata correction stays linked to the original publication | Success | The correction is linked to the original publication, shown as a metadata correction, and not shown as a new audio version. It shows the editor's name and the date. | FR11 | UC10 | BR8 | ED17, ED23, ED39 |
| GS36: A new audio version stays linked to the original publication | Success | The new audio version is linked to the original publication, shown as a new audio version, and not shown as a metadata correction. It shows the editor's name and the date. | FR11 | UC10 | BR8 | ED17, ED23, ED39 |

### Review decisions and limits

- **Requirement wording:** FR8, FR9, FR10, FR11 and FR12 remain unchanged. The scenarios add test coverage.
- **Identifiers:** GS3, GS4 and GS5 keep their CA1 numbers. The feature file places GS5 after GS34 and states that GS5 keeps its CA1 number.
- **No automatic approval:** GS30 follows US8 and UC8. A draft with nothing outstanding is not approved until the authorised editor records approval (ED27, ED37, ED40).
- **Returned, postponed and withdrawn:** These are BR4 outcomes. Each scenario records one outcome. None of them describes a later process. Only "returned for changes" is shown as blocked.
- **Withdrawal request:** Q6 asks how a withdrawal request is handled. GS33 records the review outcome "withdrawn". It does not answer Q6.
- **Outstanding permission:** GS4 isolates one outstanding archive-clip permission. It does not replace a test for outstanding consent. Section D does not record consent or permission.
- **Approval while something is outstanding:** The CA1 model does not say the system prevents the editor from recording approval in that case. It says the draft is not released (ED28). GS4 follows that limit.
- **Publication date:** UC9 has no failure scenario. FR10 records a date, a channel and the reason for a change. No rule says the system rejects a publication date (ED16, ED21). GS34 starts from a draft that is already approved and ready to be scheduled. It does not test a date on a draft that is not in that state.
- **Corrections:** UC10 has no failure scenario. Q6 leaves the handling of a correction or replacement open. GS35 and GS36 only record the link, the type, the editor's name and the date (ED17, ED31).
- **One draft:** GS31, GS32 and GS33 keep the comment against the draft in the scenario. They use one draft, so they do not show a comment kept off a second draft.
- **Illustrative data:** Episode titles, the channel name, the dates and the review comments are illustrative test data (ED29).

### Dependencies

The group must resolve the dependencies below before final integration. Until then, the scenarios must not treat the open questions or the assumptions as confirmed rules.

| Dependency | Required decision | Effect on scenarios |
|---|---|---|
| Q5 | Who may approve each programme type and publication channel | The scenarios continue to say "authorised editor" until the group names the authority. |
| Q6 | How corrections, replacements and withdrawal requests are handled | Further tests can cover that handling after agreement. GS33, GS35 and GS36 do not state it. |
| Q7 | What volunteers, contributors and partners may see | A test of review-comment visibility needs the agreed permissions. |
| Q13 | Whether the proposal editor and the authorised editor may be the same person | The draft-review scenarios keep the authorised editor. They do not settle the role overlap. |
| A7, A8, A9, A11 | Whether these assumptions are confirmed | No scenario may treat them as business rules before agreement. |
| Later sections | Common terms for blockers and release decisions | A section that adds a blocker or a release scenario must use the same terms as GS3 and GS4. |
| Scenario numbers | GS30 to GS36 in this feature | The group must confirm that the numbers do not collide before merge. |
| Common test data | Shared episode titles, channel names and dates | A change to the test data must preserve the behaviour that each scenario tests. |

## SSD (System Sequence Diagram)

| Use case | Diagram | System operations |
|---|---|---|
| UC8 | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC8_ReviewDraft.puml` | selectDraft(draft); recordReview(draft, channel, outcome, comment) |
| UC8 | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC8_AwaitingReview.puml` | viewDraft(draft) |
| UC9 | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC9_RecordPublication.puml` | recordPublicationDate(draft, channel, date) |
| UC9 | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC9_ChangePublicationDate.puml` | changePublicationDate(draft, channel, newDate, reason) |
| UC10 | `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC10_RecordPostPublication.puml` | recordCorrection(publication, type, correctionDetails) |

## Operation Contract

`selectDraft` and `viewDraft` return information only. They have no operation contract.

### OC01: recordReview

| Contract field | Content |
|---|---|
| Operation | `recordReview(draft, channel, outcome, comment)` |
| Cross-references | UC8, FR9, BR4, BR5, DEC-05, GS3, GS4, GS31, GS32, GS33 |
| Preconditions | A `Draft` exists. |
| Postconditions | `DraftReview` created<br>Association with `Draft`<br>Association with `PublicationChannel`<br>`DraftReview.outcome` = outcome<br>`DraftReview.reviewDate` = current date<br>`DraftReview.reviewedBy` = editor<br>`DraftReview.comments` = comment<br>`Draft.status` = outcome<br>Returned for changes: derived blocked by an outstanding editorial decision (DEC-05, GS31)<br>Approved, and nothing outstanding: derived ready to be scheduled (GS3)<br>Approved, with an outstanding permission or consent: derived blocked (GS4) |

### OC02: recordPublicationDate

| Contract field | Content |
|---|---|
| Operation | `recordPublicationDate(draft, channel, date)` |
| Cross-references | UC9, FR10, GS34 |
| Preconditions | `Draft.status` = approved<br>Derived ready to be scheduled |
| Postconditions | `Publication` created<br>Association with `Draft`<br>Association with `PublicationChannel`<br>`Publication.scheduledDate` = date<br>`Publication.status` = scheduled |

### OC03: changePublicationDate

| Contract field | Content |
|---|---|
| Operation | `changePublicationDate(draft, channel, newDate, reason)` |
| Cross-references | UC9, FR10, GS5 |
| Preconditions | A `Publication` for that draft and channel exists<br>`Publication.status` = scheduled |
| Postconditions | `PublicationDateChange` created<br>Association with `Publication`<br>`PublicationDateChange.earlierDate` = previous `Publication.scheduledDate`<br>`PublicationDateChange.newDate` = newDate<br>`PublicationDateChange.reason` = reason<br>`PublicationDateChange.changeDate` = current date<br>`Publication.scheduledDate` = newDate |

### OC04: recordCorrection

| Contract field | Content |
|---|---|
| Operation | `recordCorrection(publication, type, details)` |
| Cross-references | UC10, FR11, BR8, GS35, GS36 |
| Preconditions | A `Publication` exists<br>`Publication.status` = published |
| Postconditions | `Correction` created<br>Association with `Publication`<br>`Correction.type` = type<br>`Correction.details` = details<br>`Correction.recordedBy` = editor<br>`Correction.correctionDate` = current date |

## CRC Cards

The CRC cards assign every effect of OC01–OC04 to a class. `Draft` is Section C's class; only the responsibilities these operations need are listed here. Design classes are one use-case controller, a clock and two enumerations.

### Draft (Section C)

| Responsibilities | Collaborators |
|---|---|
| Know its version, description and review status (RD-04) | – |
| Create a `DraftReview` for one channel (OC01, FR9) | DraftReview, PublicationChannel |
| Set its status to the review outcome (OC01) | – |
| Know whether it is blocked (derived, RD-04, BR5) | DraftReview, Permission (C), Consent (B) |
| Know whether it is ready to be scheduled (derived, RD-04) | DraftReview, Permission (C), Consent (B) |
| Know whether an editorial decision is outstanding (DEC-05) | DraftReview |
| Know whether it has been reviewed (GS30) | – |
| Create and hold a publication for one channel (OC02, FR10) | Publication, PublicationChannel |

### DraftReview

| Responsibilities | Collaborators |
|---|---|
| Know its outcome, review date, editor and comments (FR9) | ReviewOutcome |
| Know the one draft it reviews (RD-07) | Draft |
| Know the one channel it is for (RD-07, A9) | PublicationChannel |

### ReviewOutcome (enumeration)

| Responsibilities | Collaborators |
|---|---|
| Define the only four outcomes: approved, returned for changes, postponed, withdrawn (BR4) | – |

### Publication

| Responsibilities | Collaborators |
|---|---|
| Know its scheduled date (FR10) | – |
| Know whether it is scheduled or published (OC02, OC04) | – |
| Set its scheduled date (OC02, OC03) | – |
| Set its status to scheduled (OC02) | – |
| Know the draft it releases | Draft |
| Know the channel that carries it | PublicationChannel |
| Create and hold a date-change record (OC03, GS5) | PublicationDateChange |
| Create and hold a correction (OC04, FR11) | Correction |

### PublicationDateChange

| Responsibilities | Collaborators |
|---|---|
| Know its earlier date, new date, reason and change date (OC03, GS5) | Publication |

### PublicationChannel

| Responsibilities | Collaborators |
|---|---|
| Know its name | – |

### Correction

| Responsibilities | Collaborators |
|---|---|
| Know its type (BR8) | CorrectionType |
| Know its details (OC04) | – |
| Know the editor who recorded it (OC04, FR11) | – |
| Know its correction date (FR11) | – |
| Know the publication it amends | Publication |

### CorrectionType (enumeration)

| Responsibilities | Collaborators |
|---|---|
| Define the two types: metadata correction, new audio version (BR8) | – |

### ReviewPublicationController (design class)

| Responsibilities | Collaborators |
|---|---|
| Receive `selectDraft`, `viewDraft`, `recordReview`, `recordPublicationDate`, `changePublicationDate` and `recordCorrection` | – |
| Pass the editor and today's date into `recordReview` and `recordCorrection`, and today's date into `changePublicationDate` | Clock |
| Delegate every rule to the domain objects | Draft, Publication |

### Clock (interface)

| Responsibilities | Collaborators |
|---|---|
| Provide the current date for `reviewDate`, `correctionDate` and `changeDate` | – |

## GRASP Justification

| Responsibility | Assigned class | GRASP principle | Alternative considered | Reason rejected |
|---|---|---|---|---|
| Create the review for one channel and set the draft status | Draft | Creator | The controller creates the review | The review exists only for that draft. The controller would take on domain work. |
| Create the publication for one channel | Draft | Creator | The channel, or the controller, creates it | The draft is what is released. The channel is recorded on the publication. |
| Keep the earlier date, the new date, the reason and the change date | PublicationDateChange | Information Expert | `Publication.reasonForDateChange` holds the reason | A later change would overwrite the earlier date and the reason. |
| Know its name only | PublicationChannel | Low Coupling | The channel also knows its reviews and publications | No operation starts at the channel and follows those links. |
| Receive the six operations and delegate them | ReviewPublicationController | Controller | One controller per use case, or a repository that saves the result | The three use cases share the draft and the publication. The operations already receive the objects, so a repository would be database access. |
