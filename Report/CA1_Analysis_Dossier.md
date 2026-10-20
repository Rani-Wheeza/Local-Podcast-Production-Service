# CA1: Individual Requirements and Domain Analysis

Scenario 29: Local Podcast Production Service (Kerry Community Media Collective)

Module SAAD71000 \| Student name and number: \[Rani Wheeza -T00244793\] \| Repository link: \[[Local Podcast Production Service](https://github.com/Rani-Wheeza/Local-Podcast-Production-Service.git)\]

## Contents and conventions

The dossier follows the order of the required CA1 artefacts. Stable identifiers are used throughout: P (problem), S (scope item), G (actor goal), FR and NFR (requirements), BR (business rule), C (constraint), A (assumption), R (risk), Q (clarification question), UC (use case), GS (Gherkin scenario).

| **Section** | **Artefact**                            |
|-------------|-----------------------------------------|
| 1           | Scenario interpretation                 |
| 2           | Purpose, scope and boundary             |
| 3           | Stakeholder and actor catalogue         |
| 4           | Requirements catalogue                  |
| 5           | Rules and uncertainty register          |
| 6           | Use-case model                          |
| 7           | Gherkin examples                        |
| 8           | Candidate-concept analysis and glossary |
| 9           | Domain model                            |
| 10          | Traceability matrix                     |
| 11          | Reflection                              |
| 12          | AI declaration                          |

*Evidence labels: Confirmed means the scenario states it. Inferred means it is reasoned from the scenario. Assumption means it is temporarily taken as true and needs confirmation. Example data in the Gherkin scenarios is illustrative, not scenario fact.*

# 1. Scenario interpretation

## 1.1 Organisation and present process

- Kerry Community Media Collective produces local-interest podcast programmes about arts, heritage, enterprise, sport and community activity.

- Programmes can be proposed by staff, volunteers or partner organisations, often starting as a conversation or an email.

- An editor reviews whether a proposal fits the collective's purpose, available resources and publication schedule. A proposal may be accepted, rejected, returned for revision or held for future consideration.

- Approval may carry conditions, such as confirming a contributor, changing the recording location, shortening the programme or completing additional review. The episode is then recorded, edited into one or more drafts, reviewed by an authorised editor, published and, if necessary, corrected.

- Proposals vary in completeness, and one series proposal can contain several planned episodes.

## 1.2 Problem statement

Proposals, contributor details, bookings, audio files, review notes and publication information are spread across email, shared folders, calendars and paper consent forms. The production coordinator needs reliable information about proposals awaiting decisions, upcoming sessions, equipment needs, missing consent or permissions, drafts awaiting review and scheduled publication, and this is hard to assemble from scattered sources. The collective also wants editorial discussion and sensitive contributor information restricted by role. The scenario confirms this as an organisational need. It does not establish that a privacy breach has occurred, nor how often any problem happens. The problem is information and coordination, not a lack of technology.

## 1.3 Problems and consequences

| **ID** | **Problem**                                                | **Scenario evidence**                                                                                            |
|--------|------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| P1     | Production information is scattered                        | Held across email, shared folders, calendars and paper forms                                                     |
| P2     | Encouraging discussion is read as approval                 | Partners sometimes interpret it as approval when no decision has been recorded                                   |
| P3     | The correct source recording is hard to identify           | One session can create several files; staff use working names; several drafts exist                              |
| P4     | Consent and review comments are recorded in several places | Consent on paper, by email or at the start of a recording; comments in separate email threads                    |
| P5     | Publication dates change without clear explanation         | Dates move when another programme is urgent or a partner requests delay; partner wants an explanation            |
| P6     | A finished draft is blocked                                | A permission, contributor confirmation or editorial decision may be outstanding                                  |
| P7     | Corrections are hard to tell apart                         | Staff must distinguish a metadata correction from a new audio version                                            |
| P8     | A missing component stops a session                        | A missing cable, recorder or microphone can prevent a session proceeding                                         |
| P9     | Sensitive material may be seen by the wrong people         | Partners should not automatically see internal editorial notes; volunteers should not see private correspondence |

Three of these problems are developed into consequences below. Each separates what the scenario confirms from what is inferred.

| **Problem**                                    | **Practical consequence**                                                                                                                                              | **Confirmed or inferred**                                                                                                                                                                                                                        |
|------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Consent recorded in three different forms (P4) | Before publication, someone must check paper forms, emails and the start of recordings separately, and may find it harder to tell whether a draft is actually cleared. | Confirmed: consent can be recorded on paper, by email or at the start of a recording, and a draft can be blocked by outstanding contributor confirmation. Inferred: scattered consent records make it harder to tell whether a draft is cleared. |
| Review comments in separate email threads (P4) | It is harder to track what has been requested of each draft, and a requested change could be missed.                                                                   | Confirmed: several drafts exist and comments are sometimes sent in separate threads. Inferred: a requested change could be missed. This is a possible risk, not an established frequency.                                                        |
| Encouraging conversation read as approval (P2) | A partner may plan around an assumed approval, for example expecting a publication date, or a contributor may expect a slot, before any decision exists.               | Confirmed: partners sometimes misread encouragement as approval when no decision has been recorded. Inferred: planning and expectations are then built on that assumption, causing problems later.                                               |

## 1.4 Desired outcomes

Outcomes describe what should become possible, not how. Each answers a problem above.

| **Area**                | **Desired outcome**                                                                                                                                                                                                                                  | **Answers** |
|-------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|
| Status tracking         | Staff can see which proposals have a recorded decision and which have none, and what is blocking each draft, so a finished episode is not held up by a permission nobody knew was missing, and a friendly conversation is not mistaken for approval. | P2, P6      |
| Production coordination | Staff can see upcoming sessions and the equipment each needs, so a missing component is noticed before the session.                                                                                                                                  | P8          |
| Publication readiness   | Staff can tell whether an episode is ready to publish and, if not, which consent, permission or decision is missing.                                                                                                                                 | P4, P6      |
| Publication information | Staff can see the scheduled date of an episode and why it moved, so partners can be given a realistic date with an explanation.                                                                                                                      | P5          |
| Information access      | People see the information their production role needs. Partners can learn progress without seeing internal editorial notes, and volunteers do not see private correspondence.                                                                       | P9          |
| Version clarity         | Staff can tell source recordings, drafts and approved versions apart, and a metadata correction from a new audio version.                                                                                                                            | P3, P7      |

Contributors also need to know how their recording will be used and credited, and partners need progress information. These stakeholder needs shape the outcomes above even though the people themselves do not use the system (Section 3).

## 1.5 Known evidence and uncertainty

### Known evidence

- The scenario explicitly states that information is spread across email, shared folders, calendars and paper consent forms.

- The scenario states that a proposal may be accepted, rejected, returned or held, that partners sometimes treat discussion as approval, and that a draft may be blocked by an outstanding permission, contributor confirmation or editorial decision.

- The stakeholder evidence supports the file-identification concern because the technical volunteer describes sessions producing many files with working names that do not show what is usable.

- The coordinator's statement supports the blocked-draft concern, the partner's supports the date concern, and the editor's supports the need to distinguish corrections. These statements show what stakeholders care about, not how often problems occur.

- The scenario states that the first release should coordinate proposals and production records, and that audio editing, public streaming, advertising and financial accounting are outside scope.

### Uncertainty

- The scenario does not establish whether a minimum set of information is required before a proposal can receive a decision (Q1).

- It remains unclear what qualifies as a significant change after approval, because staff do not agree (Q2).

- A clarification is required to determine when new consent is needed for reuse, substantial editing or an additional channel (Q3).

- The scenario does not say who may approve each programme type or channel, how versions relate, how corrections are handled or what each role may see (Q4 to Q7).

- Until these are confirmed, the analysis records that a change, decision or consent was made and why, without deciding what it triggers. The full register is in Section 5.

# 2. Purpose, scope and boundary

## 2.1 Purpose

The Production Record System gives Kerry Community Media Collective a single, reliable record of each programme from proposal to publication and any later correction. It lets staff see what stage each proposal and episode has reached and what is blocking it, while keeping editorial discussion and sensitive contributor information restricted by role.

## 2.2 In scope for the first release

| **ID** | **Included activity or record**                                                                                                                                                                                                            |
|--------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| S1     | Proposals, including series with planned episodes, and the editor's decision (accepted, rejected, returned or held) with any conditions                                                                                                    |
| S2     | Contributors, their roles per episode, contact preferences, availability and agreed attribution                                                                                                                                            |
| S3     | Consent: in what form it was given (paper, email or at the start of a recording), for what intended use, and where the evidence is held                                                                                                    |
| S4     | Recording sessions, locations, bookings and equipment needs                                                                                                                                                                                |
| S5     | Source recordings, drafts and approved versions, and how they relate                                                                                                                                                                       |
| S6     | Draft reviews and their outcomes (approved, returned, postponed or withdrawn), with comments kept against the draft                                                                                                                        |
| S7     | Permissions for music, archive clips and external material                                                                                                                                                                                 |
| S8     | Scheduled publication dates, the channel, and the reason when a date changes                                                                                                                                                               |
| S9     | Post-publication corrections and replacement versions                                                                                                                                                                                      |
| S10    | An overview for the production coordinator covering proposals with no decision, held proposals, upcoming sessions, equipment needs, missing consent or permissions, drafts awaiting review and what blocks them, and scheduled publication |
| S11    | Access restricted by production role, including progress information for partners without internal editorial notes                                                                                                                         |

## 2.3 Out of scope

| **Out of scope**                                                      | **Basis**                                                                                                                                                                   |
|-----------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Audio editing                                                         | Stated in the scenario                                                                                                                                                      |
| Public streaming                                                      | Stated in the scenario                                                                                                                                                      |
| Advertising                                                           | Stated in the scenario                                                                                                                                                      |
| Financial accounting                                                  | Stated in the scenario                                                                                                                                                      |
| Storing the audio files themselves                                    | Assumption A1: large files are not always practical to upload from outside the studio, so the system holds information about files, not the audio                           |
| Deciding who may approve what, or what counts as a significant change | Assumption A4: the system records decisions and does not decide policy (Q2, Q5)                                                                                             |
| Recording contributor concerns and their decisions                    | Deferred. The scenario says concerns may be raised and a consistent record is wanted, but gives no process, owner or visibility rule. Building it would invent policy (Q11) |

## 2.4 Dependencies, constraints and assumptions

Dependencies are things outside the system that it relies on: the public channels where episodes are published; the existing email, calendars and shared folders where audio and some documents will continue to live; paper consent forms; editors and authorised reviewers whose decisions drive status; partners and contributors who supply information; and staff and volunteers, who must keep the record current or it becomes incomplete.

Constraints (C1 to C5) are stated in the scenario and assumptions (A1 to A13) are temporary. Both are listed separately in Section 5 so that no assumption is read as a confirmed rule.

## 2.5 System boundary

Inside the boundary is the Production Record System, covering S1 to S11. Outside it, and interacting with it, are the proposal editor, authorised editor, production coordinator, technical editor, technical volunteer and session organiser. Partners, contributors and the public audience are outside and are stakeholders, not actors, under assumption A5. Section 3 classifies them.

# 3. Stakeholder and actor catalogue

## 3.1 Stakeholder catalogue

A stakeholder has an interest in, is affected by, or can influence the system. Influence reasons below avoid inventing authority the scenario does not give. The scenario's "editor" is divided into a proposal editor and an authorised editor because it names two different decision points.

| **Stakeholder**                | **Type**          | **Goal or interest**                                                                                           | **Main concern**                                                       | **Influence and reason**                                                                                                             |
|--------------------------------|-------------------|----------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------|
| Proposal editor                | Direct            | Record a clear decision on each proposal, with conditions                                                      | A friendly conversation being treated as approval                      | High. Editors review proposals, so decision and condition requirements come from this role                                           |
| Authorised editor              | Direct            | Review a draft's title, description, credits, permissions and channel, then record the outcome                 | A corrected description confused with a new audio file                 | High. The scenario gives this role the pre-publication review. Whether it is the same person as the proposal editor is unknown (Q13) |
| Production coordinator         | Direct            | A reliable overview of proposals, sessions, equipment, missing consent or permissions, reviews and publication | A finished draft blocked by one unnoticed missing item                 | High. Their needs are described in detail and shape FR12                                                                             |
| Technical editor               | Direct            | Record whether music, archive clips and external material have permission                                      | An outstanding permission blocking publication                         | Medium. Records permissions that can block a draft; no wider authority is described                                                  |
| Technical volunteers           | Direct            | Identify which recordings from a session are usable                                                            | Working filenames that do not show what is usable                      | Medium. Their need is practical; they have no stated decision role                                                                   |
| Session organiser              | Direct            | Coordinate room, recording kit and technical support                                                           | A missing cable, recorder or microphone stopping a session             | Medium. Missing kit is a confirmed cause of failed sessions                                                                          |
| Staff and volunteers (general) | Direct / indirect | Coordinate production work and keep accurate records                                                           | Seeing private correspondence or editorial discussion they do not need | Medium (inferred). With a small staff and many volunteers, whether they keep records current decides whether the record is useful    |
| Contributors                   | Indirect          | Know where their recording appears, how they are credited and how it will be used                              | Unclear consent, use or credit                                         | Medium. Consent and attribution requirements come from them; missing confirmation can block a draft                                  |
| Partner organisations          | External          | A realistic publication date, progress updates, an explanation when dates change                               | Dates changing without explanation; seeing internal editorial notes    | Medium. They propose programmes and can request delay but should not automatically see editorial notes                               |

Collective management and the public audience are not listed. The scenario names no manager or owner, and says nothing about what the audience needs from the production record.

## 3.2 Actor classification

An actor interacts with the system to achieve a goal and sits outside the system boundary. Being affected by the system does not make a stakeholder an actor.

| **Candidate**                                 | **Classification**            | **Basis**                                                                                                      |
|-----------------------------------------------|-------------------------------|----------------------------------------------------------------------------------------------------------------|
| Proposal editor                               | Primary actor, provisional    | Confirmed that editors decide. Provisional that they record decisions themselves                               |
| Authorised editor                             | Primary actor, provisional    | Confirmed that this role reviews drafts. Whether it is the same person as the proposal editor is unknown (Q13) |
| Production coordinator                        | Primary actor                 | Overview need is confirmed. Recording tasks are provisional (A6)                                               |
| Technical editor                              | Supporting actor              | The scenario states they record permission status                                                              |
| Technical volunteer                           | Supporting actor, provisional | Confirmed they handle files. Provisional that they enter information themselves                                |
| Session organiser                             | Supporting actor, provisional | Confirmed they coordinate sessions. Provisional that they use the system directly                              |
| Partner organisation                          | Offstage stakeholder          | Direct access is unresolved, so staff are assumed to share progress (A3, A5, Q9)                               |
| Contributor                                   | Offstage stakeholder          | Direct access is unresolved, so staff record their information (A5, Q9)                                        |
| Public audience, general staff and volunteers | Not actors                    | The audience has no stated interaction; general staff and volunteers are covered by the specific roles above   |

Roles are responsibilities, not job titles. One person may hold several, and the model assumes no staffing structure. If partners or contributors turn out to log in, they become supporting actors. Offstage stakeholders still shape the requirements: partners drive FR10 and NFR1, contributors drive FR4 and FR5.

## 3.3 Actor-goal table

| **ID** | **Actor**              | **Goal**                                                             | **Related stakeholder concern**                               | **Status**        |
|--------|------------------------|----------------------------------------------------------------------|---------------------------------------------------------------|-------------------|
| G1     | Proposal editor        | Record a decision on a proposal with any conditions                  | A conversation is not approval                                | Provisional       |
| G3     | Production coordinator | See what is awaiting action and what is blocking publication         | A finished draft blocked by an unnoticed gap                  | Confirmed         |
| G4     | Production coordinator | Plan a recording session and its equipment                           | Missing kit stopping a session                                | Provisional       |
| G5     | Session organiser      | Confirm room, kit and technical support                              | A missing component stopping a session                        | Provisional       |
| G6     | Technical volunteer    | Record a session's files and mark which are usable                   | Filenames not showing what is usable                          | Provisional       |
| G7     | Technical editor       | Record permissions for music, archive clips and external material    | An outstanding permission blocking publication                | Confirmed         |
| G8     | Authorised editor      | Review a draft and record approved, returned, postponed or withdrawn | Telling a ready draft from a blocked one                      | Provisional       |
| G9     | Authorised editor      | Record a correction or replacement after publication                 | A corrected description differs from a replacement audio file | Provisional (Q6)  |
| G10    | Production coordinator | Record a contributor's consent, its form and intended use            | Unclear consent or use                                        | Provisional (Q10) |
| G12    | Production coordinator | Record a change to a publication date with the reason                | Dates changing without explanation                            | Confirmed         |
| G13    | Production coordinator | Record a programme or series proposal                                | Proposals arriving as short emails or conversations           | Provisional       |
| G14    | Production coordinator | Maintain contributor and episode details                             | Same person in several roles; credit and contact details      | Provisional       |

Two goals are deferred and have no use case by design. G2, reconsidering an approved proposal after a significant change, waits on Q2. G11, recording a contributor's concern and the decision on it, is outside the first release (Section 2.3, Q11).

# 4. Requirements catalogue

## 4.1 Approach

Requirements come from the scenario's problems, the stakeholder concerns in Section 3 and the scope items in Section 2. Each is a single capability with a source, MoSCoW priority and a pass-or-fail verification method. Where the scenario leaves a policy open, the requirement records information and does not impose a rule.

## 4.2 Functional requirements

| **ID** | **Requirement**                                                                                                                                                                                                                                                                                 | **Source and rationale**                                                                             | **Pri.** | **Verification**                                                                                   | **Links**       |
|--------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------|----------|----------------------------------------------------------------------------------------------------|-----------------|
| FR1    | The system shall allow staff to record a programme proposal with its subject, intended audience, format, expected duration, proposed contributors and preferred publication period. Details not yet known are recorded as not yet known.                                                        | Proposals vary from complete to a short email or conversation                                        | Must     | Enter a complete proposal and one with only a subject; check missing details show as not yet known | S1, G13, UC1    |
| FR2    | The system shall allow staff to record a series proposal together with its planned episodes.                                                                                                                                                                                                    | A series may contain several planned episodes                                                        | Must     | Enter a series with three episodes; check all three are linked to it                               | S1, G13, UC1    |
| FR3    | The system shall allow an editor to record a decision on a proposal as accepted, rejected, returned for revision or held for future consideration, with the date, the person who made it and any conditions.                                                                                    | Four outcomes in the scenario; a friendly conversation is not approval                               | Must     | Record each outcome with a condition; check outcome, person, date and condition are kept           | S1, G1, UC2     |
| FR4    | The system shall allow staff to record each contributor's role in an episode, with contact preferences, availability and agreed attribution.                                                                                                                                                    | The same person may take different roles in several episodes; contributors want to know their credit | Must     | Record one contributor in two roles on two episodes; check both retain their own attribution       | S2, G14, UC3    |
| FR5    | The system shall allow staff to record a contributor's consent for an episode, including the form in which it was given (paper, email or verbal at the start of a recording), the intended use, the date, and where the evidence is held.                                                       | Consent arrives in three forms; contributors should understand intended use                          | Must     | Record one consent in each form; check form, use, date and evidence location are kept              | S3, G10, UC4    |
| FR6    | The system shall allow staff to record a recording session with its date, location, equipment required and any required item reported missing.                                                                                                                                                  | A missing cable, recorder or microphone can stop a session                                           | Should   | Record a session needing a recorder, mark one component missing; check the session shows it        | S4, G4, G5, UC5 |
| FR7    | The system shall allow staff to record the source recordings and drafts of an episode, show how each relates to the others, and show which draft is approved.                                                                                                                                   | Working filenames make the correct source hard to find; several drafts can exist                     | Must     | Record one session with several files and two drafts; check each draft links to its sources        | S5, G6, UC6     |
| FR8    | The system shall allow the technical editor to record the permission status of music, archive clips and external material against the draft that uses them, and show which permissions are still outstanding for a draft.                                                                       | Technical editor's role; a missing permission can block a draft                                      | Must     | Record one granted and one outstanding permission on a draft; check the outstanding one is shown   | S7, G7, UC7     |
| FR9    | The system shall allow an authorised editor to record a review of a draft as approved, returned for changes, postponed or withdrawn, with the date, the person who made it and comments kept against that draft.                                                                                | Review outcomes in the scenario; comments are currently scattered                                    | Must     | Record each outcome; check outcome, person, date and comment are kept on the correct draft         | S6, G8, UC8     |
| FR10   | The system shall allow staff to record an episode's publication date and channel, and the reason when the date changes.                                                                                                                                                                         | Dates change; the partner asks for an explanation                                                    | Should   | Change a date; check the earlier date, new date and reason are all retained                        | S8, G12, UC9    |
| FR11   | The system shall allow an authorised editor to record a post-publication correction or replacement, linked to the original publication, identified as a metadata correction or a new audio version, with the date and the person who made it.                                                   | The editor treats the two as very different changes                                                  | Should   | Record one of each; check each is linked to the publication and shows its type                     | S9, G9, UC10    |
| FR12   | The system shall give the production coordinator a view of proposals with no recorded decision, proposals held for future consideration, upcoming sessions, equipment needs, missing consent or permissions, drafts awaiting review and what is blocking each draft, and scheduled publication. | Coordinator statement and information section; showing held proposals is an inference (A13)          | Must     | Prepare sample records for each category; check each appears under its own heading                 | S10, G3, UC11   |

A requirement is Must if the scenario's main problem returns without it: decisions, consent, permissions, versions, reviews and the overview. FR6, FR10 and FR11 are Should because the process can still run without them in a first release, though the scenario names real problems in each. Won't (this release): audio editing, public streaming, advertising, financial accounting, and contributor concerns (deferred pending Q11).

## 4.3 Non-functional requirements

The scenario gives no performance or usability figures. Targets marked as proposed are mine, not findings, and need validation with the collective (Q12).


| **ID** | **Requirement**                                                                                                                                                                        | **Basis**                                                                                                                                               | **Pri.** | **Verification**                                                                                 |
|--------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------|----------|--------------------------------------------------------------------------------------------------|
| NFR1   | Access: where a partner or volunteer view is provided, no internal editorial note shall be displayed in it.                                                                            | Partners should not automatically see internal notes; access reflects production roles (BR6, BR7). Conditional because direct access is unresolved (Q9) | Must     | Create sample internal notes and test the partner and volunteer views; pass only if none appears |
| NFR2   | Performance: the coordinator overview (FR12) shall appear within 5 seconds for the collective's expected number of records.                                                            | Proposed target. The 5 seconds and the record volume both need confirming (Q12)                                                                         | Should   | Timed test against a realistic sample set                                                        |
| NFR3   | Usability: a trained volunteer shall be able to record a session's files (FR7), with each file linked to its session, in 10 minutes or less using a one-page guide.                    | Proposed target. Many volunteers and a small staff; figure needs confirming (Q12)                                                                       | Should   | Observed trial with volunteers who have had only the one-page guide                              |
| NFR4   | Retrievability: the history of any episode (its proposal decisions, consent records, sessions, drafts, reviews, publication and corrections) shall be retrievable in under one minute. | Proposed target. Information is currently spread across several places (P1)                                                                             | Could    | Timed retrieval for a sample episode; check all seven record types are present                   |

Recording who made a decision and when is a functional capability and sits in FR3, FR9 and FR11, so it is not repeated as a quality requirement.

# 5. Rules and uncertainty register

## 5.1 Business rules

| **ID** | **Rule**                                                                                                                   | **Evidence**                                                                                | **Strength** |
|--------|----------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------|--------------|
| BR1    | A proposal is not approved until a decision has been recorded                                                              | Partners treat encouraging discussion as approval "even when no decision has been recorded" | Implied      |
| BR2    | A proposal decision is accepted, rejected, returned for revision or held for future consideration                          | Programme proposals section                                                                 | Stated       |
| BR3    | An authorised editor reviews a draft, its title, description, credits, permissions and intended channel before publication | Review section                                                                              | Stated       |
| BR4    | A draft review outcome is approved, returned for changes, postponed or withdrawn                                           | Review section                                                                              | Stated       |
| BR5    | A draft with an outstanding permission, contributor confirmation or editorial decision is blocked from publication         | Production section; coordinator statement                                                   | Stated       |
| BR6    | Access to information reflects production roles                                                                            | Context section                                                                             | Stated       |
| BR7    | Partners do not automatically see internal editorial notes                                                                 | Context section                                                                             | Stated       |
| BR8    | A metadata correction can be distinguished from a new audio version                                                        | Staff "need to distinguish" them; how they differ is not defined                            | Implied      |

## 5.2 Constraints (stated in the scenario)

| **ID** | **Constraint**                                                               |
|--------|------------------------------------------------------------------------------|
| C1     | The collective has a small staff and many volunteers                         |
| C2     | Access should reflect production roles                                       |
| C3     | Large audio files are not always practical to upload from outside the studio |
| C4     | The first release covers proposals and production records only               |
| C5     | Consent may be recorded on paper, by email or at the start of a recording    |

## 5.3 Assumptions (temporary, not confirmed)

| **ID** | **Assumption**                                                                                           | **Affects**       |
|--------|----------------------------------------------------------------------------------------------------------|-------------------|
| A1     | The system holds information about audio files, not the audio itself                                     | Scope, FR7        |
| A2     | Paper consent forms remain in use; the system records that consent exists and where the evidence is held | FR5               |
| A3     | Partners receive progress information; whether they log in is unknown                                    | NFR1, actors      |
| A4     | Approval authority and the meaning of significant change are recorded as data, not built in as policy    | UC2, UC8          |
| A5     | Staff enter information on behalf of partners and contributors, who are offstage stakeholders            | Actors            |
| A6     | The production coordinator records proposals, contributors and consent                                   | UC1, UC3, UC4     |
| A7     | Each episode in a series has its own review and publication record                                       | FR2, FR9          |
| A8     | Only an authorised editor records a release decision                                                     | UC8               |
| A9     | Approval to publish applies per channel                                                                  | UC8, FR10         |
| A10    | A series is a proposal with several planned episodes                                                     | Domain model      |
| A11    | An approved draft is a status of a draft, not a separate item                                            | FR7, domain model |
| A12    | Each recording session relates to one episode                                                            | Domain model      |
| A13    | The overview lists held proposals separately from proposals with no decision                             | FR12              |

## 5.4 Risks (inferred, none confirmed)

| **ID** | **Risk**                                                          | **Why it matters**                                              |
|--------|-------------------------------------------------------------------|-----------------------------------------------------------------|
| R1     | Staff apply "significant change" inconsistently                   | The same change may or may not trigger reconsideration          |
| R2     | Consent renewal is handled inconsistently                         | An episode could be reused or republished without valid consent |
| R3     | Paper consent forms stay outside the record                       | The record may look complete when it is not                     |
| R4     | Volunteers do not adopt the record                                | Information stays scattered                                     |
| R5     | Sensitive contributor information is exposed through wrong access | Privacy harm and loss of contributor trust                      |

## 5.5 Clarification questions

Q1 to Q7 arise from the scenario's own gaps. Q8 to Q13 were raised by this analysis.

| **ID** | **Question**                                                                                              | **Decision it affects**                          |
|--------|-----------------------------------------------------------------------------------------------------------|--------------------------------------------------|
| Q1     | What information is required before a proposal can receive a decision?                                    | When a proposal is ready for UC2                 |
| Q2     | What counts as a significant change after approval?                                                       | Whether a proposal is reconsidered (deferred G2) |
| Q3     | When is new consent required for reuse, substantial editing or an additional channel?                     | FR5, R2                                          |
| Q4     | How are source recordings, drafts and approved versions identified and related?                           | FR7                                              |
| Q5     | Who may approve each programme type and publication channel?                                              | BR3, A8                                          |
| Q6     | How are corrections, replacements and withdrawal requests handled?                                        | FR11                                             |
| Q7     | What may volunteers, contributors and partners see?                                                       | BR6, BR7, NFR1                                   |
| Q8     | Does the system hold audio files or only references to them?                                              | A1, scope                                        |
| Q9     | Do partners and contributors use the system directly?                                                     | A3, A5, actors                                   |
| Q10    | Who records consent and proposals?                                                                        | A6                                               |
| Q11    | How should contributor concerns be recorded and who may see them?                                         | Deferred requirement and use case                |
| Q12    | What response time, record volume and training time would the collective accept?                          | NFR2 to NFR4 targets                             |
| Q13    | Can the proposal editor and authorised editor roles be held by the same person, or must they be separate? | Actor roles, UC2, UC8, A8                        |

# 6. Use-case model

## 6.1 System boundary and actors

Inside the boundary is the Production Record System. Outside are the people who use it, the public channels, the email, calendars and shared folders that will continue to hold audio and some documents, and the paper consent forms. The six actors are the roles classified in Section 3.2. The scenario's "programme editor" corresponds to the proposal editor here. Partners and contributors are offstage stakeholders (A5). Whether one person may hold both editor roles is a separate question (Q13) from who may approve each programme type and channel (Q5).

## 6.2 Use-case catalogue

| **ID** | **Use case**                                                                                                                                                                                                                                                          | **Initiating actor**                           | **Goal** | **Requirements** |
|--------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------|----------|------------------|
| UC1    | Record a programme or series proposal. Details not yet known are recorded as not yet known                                                                                                                                                                            | Production coordinator                         | G13      | FR1, FR2         |
| UC2    | Record a proposal decision                                                                                                                                                                                                                                            | Proposal editor                                | G1       | FR3              |
| UC3    | Maintain contributor and episode details                                                                                                                                                                                                                              | Production coordinator                         | G14      | FR4              |
| UC4    | Record contributor consent and its evidence, including form and intended use                                                                                                                                                                                          | Production coordinator                         | G10      | FR5              |
| UC5    | Record a recording session and equipment needs, including any missing item                                                                                                                                                                                            | Production coordinator, with session organiser | G4, G5   | FR6              |
| UC6    | Record source recordings and draft versions. An approved draft is not assumed to be the version published                                                                                                                                                             | Technical volunteer                            | G6       | FR7              |
| UC7    | Record permissions for material used                                                                                                                                                                                                                                  | Technical editor                               | G7       | FR8              |
| UC8    | Review a draft. The authorised editor records the outcome. A draft with an outstanding permission, contributor confirmation or editorial decision is shown as blocked (BR5). A draft with nothing outstanding is not automatically approved; the editor still decides | Authorised editor                              | G8       | FR9, FR8         |
| UC9    | Record or change a publication date, keeping the earlier date and the reason                                                                                                                                                                                          | Production coordinator                         | G12      | FR10             |
| UC10   | Record a post-publication correction or replacement, linked to the original publication and identified as a metadata correction or a new audio version                                                                                                                | Authorised editor                              | G9       | FR11             |
| UC11   | View the production overview, including proposals with no decision, held proposals and what is blocking each draft                                                                                                                                                    | Production coordinator                         | G3       | FR12             |

Every functional requirement has a use case and every use case traces to a requirement and a goal.

## 6.3 Use-case diagram

![Production Record System use-case diagram](../diagrams/use-case-model.png)

*Figure 1: Production Record System use-case diagram (source: diagrams/use-case-model.puml)*

## 6.4 Modelling decisions

- **Simple associations only.** No include or extend relationships are used, because each use case is a complete actor goal.

- **Who records proposals and consent** (UC1, UC4) is an assumption. The scenario does not say, so both go to the production coordinator (A5, A6).

- **Held proposals.** A held proposal has a recorded decision, so it is not awaiting one, but it may need future attention. The overview lists proposals with no decision and held proposals separately. Showing held proposals is an inference (A13).

- **Reconsideration and contributor concerns** are not use cases. Reconsideration waits on Q2. Contributor concerns are deferred because a use case would require inventing handling policy (Q11). This is a scoping decision, not an oversight.

Three draft states are kept apart, because confusing them is the scenario's central problem:

| **Term**              | **Meaning**                                                                                                        | **Recorded by** |
|-----------------------|--------------------------------------------------------------------------------------------------------------------|-----------------|
| Awaiting review       | No review outcome is recorded, so the draft is not approved                                                        | FR9             |
| Blocked               | A permission, contributor confirmation or editorial decision is outstanding, so the draft cannot be released (BR5) | FR5, FR8, FR9   |
| Approved              | An authorised editor has recorded approval                                                                         | FR9             |
| Ready to be scheduled | Approved and nothing is outstanding                                                                                | Derived         |

The model does not assume the system prevents an editor recording approval while something is outstanding, because the scenario does not say so. It states only that such a draft is not released.

## 6.5 Detailed use case: UC2 Record a proposal decision

Chosen because it addresses the scenario's clearest problem: a friendly conversation being mistaken for approval.

| **Field**                    | **Specification**                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Primary actor                | Proposal editor (provisional)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Goal                         | Record the editor's actual decision on a proposal, with any conditions, so that discussion is not mistaken for approval                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| Preconditions                | The proposal has been recorded (UC1). The editor has reviewed it for fit with purpose, resources and schedule, outside the system. The proposal has no decision, or its last decision was returned for revision or held                                                                                                                                                                                                                                                                                                                                                               |
| Trigger                      | The editor has reached a decision, or a returned or held proposal is ready to be decided again                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| Main success flow (accepted) | 1\. The editor identifies the proposal. 2. The system shows its details, earlier decisions and earlier conditions. 3. The editor states that the proposal is accepted. 4. The editor records any conditions, such as shortening the programme, confirming a contributor, changing the location or completing additional review. 5. The system records the decision with the date, the person who made it and the conditions. 6. The system shows the proposal as accepted with its conditions                                                                                         |
| Alternative flows            | 3a Rejected: the editor may note a reason; continue at step 5. 3b Returned for revision: the editor records what needs revising; continue at step 5; the proposal stays open for a later decision. 3c Held for future consideration: the editor may note when to look again; continue at step 5                                                                                                                                                                                                                                                                                       |
| Exception flows              | E1 Proposal is incomplete: the scenario does not say what is required before a decision (Q1), so the system does not block the decision; unknown details stay marked as not yet known; the editor may decide or return it (3b). E2 The last decision was returned or held: the editor records a new decision and the earlier one is kept. Reopening an accepted or rejected proposal is not covered, because it depends on what counts as a significant change (Q2). E3 The editor abandons the recording: no decision is recorded and the proposal still shows as having no decision |
| Postconditions               | Success: decision, date, person and conditions are kept; earlier decisions stay on record; a proposal with a recorded decision no longer shows as having none; a held proposal remains visible as held. Abandoned (E3): nothing changes                                                                                                                                                                                                                                                                                                                                               |
| Related items                | FR3, FR12, S1, G1, BR1, BR2                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| Open points                  | Who may record a decision for each programme type or channel is unresolved (Q5), so no rule is assumed. Whether a reason is required for rejection, or a period for a hold, is not stated, so both are optional                                                                                                                                                                                                                                                                                                                                                                       |

# 7. Gherkin examples

The five scenarios are stored in features/production_record.feature, tagged with their requirement, use case and GS identifier. They use domain language with no screen, database or programming detail. Names, titles and dates are illustrative. The file was checked for syntax in testjam.io (Cucumber.js); that run only confirms the Gherkin parses, and no step definitions implement the system.

### Rule: A proposal is not approved until an editor's decision is recorded (BR1, BR2)

GS1: Proposal accepted with a condition (success)

```gherkin
Scenario: Proposal accepted with a condition
  Given the partner "Dingle Heritage Group" has proposed a series of three episodes about boat building
  And the proposal has no recorded decision
  When the proposal editor records the decision "accepted" with the condition "each episode is shortened to 25 minutes"
  Then the proposal is shown as accepted with that condition
  And the decision shows the editor's name and the date it was made
```

GS2: A proposal with no decision is distinguished from a held proposal and from an approved one (boundary)

```gherkin
Scenario: A proposal with no decision is distinguished from a held proposal and from an approved one
  Given the proposal "Dingle boat builders" has been discussed with its partner and has no recorded decision
  And the proposal "Harbour festival sounds" has been recorded as held for future consideration
  When the production coordinator views the production overview
  Then "Dingle boat builders" is listed as awaiting a decision
  And "Harbour festival sounds" is listed as held for future consideration
  And neither proposal is shown as approved
```

### Rule: A draft is released only when an authorised editor has approved it and nothing is outstanding (BR3, BR5)

GS3: Authorised editor approves a reviewed draft with nothing outstanding (success)

```gherkin
Scenario: Authorised editor approves a reviewed draft with nothing outstanding
  Given the draft "Episode 2: The Last Currach Builder" is awaiting review
  And every contributor consent for the episode is confirmed
  And the permission for the archive clip in the draft is recorded as granted
  When the authorised editor reviews the draft and approves it for the "podcast feed" channel
  Then the draft is recorded as approved for that channel with the editor's name and the date
  And the draft is shown as ready to be scheduled
```

GS4: Technically complete draft blocked by an outstanding permission (failure)

```gherkin
Scenario: Technically complete draft blocked by an outstanding permission
  Given the draft "Episode 2: The Last Currach Builder" is complete and edited
  And the permission for its archive clip is still outstanding
  When the authorised editor reviews the draft for publication
  Then the draft is not released for publication
  And the draft is shown as blocked by the outstanding archive clip permission
```

### Rule: A change to a publication date keeps its reason (FR10)

GS5: Publication date moved because another programme is urgent (alternative)

```gherkin
Scenario: Publication date moved because another programme is urgent
  Given the episode "Episode 2: The Last Currach Builder" is scheduled for 14 November
  When the production coordinator moves the date to 28 November because another programme has become urgent
  Then the episode is shown as scheduled for 28 November
  And the record shows the earlier date of 14 November and the reason for the change
```

| **Scenario**                        | **Type**        | **Use case**             | **Requirements and rules** |
|-------------------------------------|-----------------|--------------------------|----------------------------|
| GS1 Accepted with a condition       | Success         | UC2                      | FR3, BR2                   |
| GS2 No decision, held, not approved | Boundary / rule | UC11 (UC2 sets the rule) | FR3, FR12, BR1             |
| GS3 Approved by the editor          | Success         | UC8                      | FR9, BR3                   |
| GS4 Blocked by a permission         | Failure         | UC8                      | FR8, FR9, FR12, BR5        |
| GS5 Date moved                      | Alternative     | UC9                      | FR10                       |

# 8. Candidate-concept analysis and glossary

## 8.1 Method

Candidates were taken from the nouns and noun phrases in the scenario, the requirements, the rules and the use cases. Each received one decision: keep as a conceptual class; convert to an attribute; merge with another concept; convert to an association or status; or remove because it is an actor, a tool, a software or design idea, or out of scope.

## 8.2 Candidate analysis

| **Candidate**                                          | **Decision**                   | **Reasoning and evidence**                                                                      |
|--------------------------------------------------------|--------------------------------|-------------------------------------------------------------------------------------------------|
| Kerry Community Media Collective                       | Remove                         | The organisation the system serves, a single context instance                                   |
| Programme                                              | Merge into Proposal / Episode  | The scenario uses the word loosely for both the idea and the produced item                      |
| Proposal                                               | **Keep**                       | FR1; subject, audience, format, duration, preferred period                                      |
| Series                                                 | Merge into Proposal            | A series is a proposal with several planned episodes; a separate class would duplicate it (A10) |
| Episode                                                | **Keep**                       | FR2; planned under a proposal, carries title and description                                    |
| Programme type                                         | Attribute of Proposal          | A short list of values; Q5 shows it matters for approval but needs no class yet                 |
| Proposal decision                                      | **Keep**                       | FR3, BR1, BR2; a proposal can be returned and later accepted, so one attribute is not enough    |
| Approval condition                                     | Attribute of Proposal Decision | Becomes a class only if each condition's completion must be tracked                             |
| Proposer (staff, volunteer, partner)                   | Convert to association         | A proposal may come from a partner or from the collective                                       |
| Partner organisation                                   | **Keep**                       | Proposes programmes and wants progress information                                              |
| Staff, volunteer, editor, coordinator                  | Remove as classes              | Actors or roles (Section 3); who decided becomes an attribute                                   |
| Production role, access permission                     | Remove                         | A policy constraint the scenario does not define (Q7)                                           |
| Contributor                                            | **Keep**                       | FR4; holds contact preferences and availability                                                 |
| Presenter, interviewee, performer, technical volunteer | Convert to attribute           | Values of a role: the same person may contribute in different roles                             |
| Contribution                                           | **Keep**                       | A contributor's role in one episode, with agreed credit                                         |
| Credit / attribution                                   | Attribute of Contribution      | Agreed description per episode                                                                  |
| Consent                                                | **Keep**                       | FR5; form, intended use, date                                                                   |
| Consent form, email consent, verbal consent            | Merge into Consent             | Different forms of the same concept; form is an attribute                                       |
| Intended use                                           | Attribute of Consent           | Q3 depends on it                                                                                |
| Recording session                                      | **Keep**                       | FR6; date, location, equipment needed                                                           |
| Booking                                                | Merge into Recording Session   | The reservation of a session                                                                    |
| Studio, event, other location                          | Attribute of Recording Session | Location type and description                                                                   |
| Recording kit, cable, recorder, microphone             | Convert to attribute           | Recorded as equipment needed; a class is only warranted for component-level tracking            |
| Source recording                                       | **Keep**                       | FR7; a raw file from a session with a working name                                              |
| Working file name                                      | Attribute of Source Recording  | The scenario's problem is that names do not show what is usable                                 |
| Draft                                                  | **Keep**                       | FR7, FR9; an edited version of an episode built from source recordings                          |
| Approved version                                       | Convert to status of Draft     | A draft that has been approved (A11, Q4)                                                        |
| Replacement version                                    | Convert to Draft with a link   | A new audio version that replaces an earlier one                                                |
| Music, archive clip, external material                 | Merge into Permission          | Described on the permission, not modelled separately                                            |
| Permission                                             | **Keep**                       | FR8; deliberately separate from contributor consent                                             |
| Draft review                                           | **Keep**                       | FR9, BR3, BR4; outcome, reviewer and date                                                       |
| Review comment, internal editorial note                | Attribute of Draft Review      | Comments belong to a review; visibility is the open policy matter Q7                            |
| Publication                                            | **Keep**                       | FR10; scheduled and actual release on a channel                                                 |
| Publication channel                                    | **Keep**                       | Review includes the intended channel; consent may be needed for additional channels             |
| Publication date, schedule change                      | Attribute of Publication       | Date and reason for change                                                                      |
| Correction                                             | **Keep**                       | FR11; metadata correction or new audio version, with reason                                     |
| Contributor concern, withdrawal request                | Remove (deferred)              | Deferred with goal G11 pending Q11; no requirement in the first release                         |
| Deadline                                               | Remove                         | Not confirmed as a recorded concept by the scenario                                             |
| Folder, email thread, calendar, device                 | Remove                         | Current tools, not domain concepts                                                              |
| Overview, dashboard, report, system, record            | Remove                         | Software or design concepts; FR12 is a view over other concepts                                 |
| Public audience                                        | Remove                         | A stakeholder with nothing the system records                                                   |
| Audio editing, streaming, advertising, accounting      | Remove                         | Out of scope                                                                                    |

Result: 15 conceptual classes. These are Proposal, Episode, Proposal Decision, Partner Organisation, Contributor, Contribution, Consent, Recording Session, Source Recording, Draft, Permission, Draft Review, Publication, Publication Channel and Correction.

## 8.3 Glossary

| **Term**             | **Definition**                                                                                                                                                           |
|----------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Proposal             | An idea for a programme with its subject, audience, format, duration, proposed contributors and preferred publication period. May begin as a short conversation or email |
| Episode              | One planned or produced item within a proposal. A series is a proposal with several episodes                                                                             |
| Proposal decision    | An editor's recorded outcome on a proposal: accepted, rejected, returned for revision or held. Discussion without a recorded decision is not a decision                  |
| Partner organisation | An external organisation that may propose programmes and wants progress information                                                                                      |
| Contributor          | A person who takes part in an episode, such as a presenter, interviewee, performer or technical volunteer                                                                |
| Contribution         | A contributor's role in one episode, with any agreed credit                                                                                                              |
| Consent              | A contributor's agreement to the intended use of their contribution, given on paper, by email or at the start of a recording                                             |
| Permission           | Authorisation to use third-party material such as music, an archive clip or externally supplied material. Different from consent                                         |
| Recording session    | An occasion on which contributors are recorded, in the studio, at an event or elsewhere. May be repeated or supplemented                                                 |
| Source recording     | A raw audio file from a recording session. One session can produce several                                                                                               |
| Draft                | An edited version of an episode prepared for review. Several can exist for one episode                                                                                   |
| Draft review         | An authorised editor's review of a draft, resulting in approved, returned, postponed or withdrawn                                                                        |
| Publication          | The scheduled or actual release of an episode on a channel                                                                                                               |
| Publication channel  | A public channel through which an episode is released                                                                                                                    |
| Correction           | A change after publication, either a metadata correction or a new audio version. The scenario does not define how they differ                                            |
| Blocked              | A draft that may be technically complete but cannot be published because a permission, contributor confirmation or editorial decision is outstanding                     |
| Significant change   | A change to an approved proposal that may require reconsideration. Staff do not agree what counts                                                                        |

# 9. Domain model

The conceptual model uses the 15 classes from Section 8. It has no methods, controllers, repositories, interface controls, keys or navigability. The arrow after each association name shows reading direction only.

![Conceptual domain model](../diagrams/domain-model.png)

*Figure 2: Conceptual domain model (source: diagrams/domain-model.puml)*

## 9.1 Classes and attributes

| **Class**           | **Attributes**                                                                                             | **From**          |
|---------------------|------------------------------------------------------------------------------------------------------------|-------------------|
| Proposal            | subject, intendedAudience, format, expectedDuration, preferredPublicationPeriod, programmeType, proposedBy | FR1               |
| ProposalDecision    | outcome, decisionDate, conditions, decidedBy                                                               | FR3               |
| PartnerOrganisation | name                                                                                                       | Proposals section |
| Episode             | title, description                                                                                         | FR2               |
| Contributor         | name, contactPreference, availability                                                                      | FR4               |
| Contribution        | role, agreedCredit                                                                                         | FR4               |
| Consent             | form, intendedUse, dateGiven                                                                               | FR5               |
| RecordingSession    | date, locationType, locationDescription, equipmentNeeded                                                   | FR6               |
| SourceRecording     | workingName, usabilityNote                                                                                 | FR7               |
| Draft               | versionDescription, status                                                                                 | FR7               |
| Permission          | materialDescription, materialSource, permittedUse, status                                                  | FR8               |
| DraftReview         | outcome, reviewDate, reviewedBy, comments                                                                  | FR9               |
| Publication         | scheduledDate, actualDate, reasonForDateChange                                                             | FR10              |
| PublicationChannel  | name                                                                                                       | FR10              |
| Correction          | type, reason, correctionDate                                                                               | FR11              |

## 9.2 Associations and multiplicity

| **Association**                           | **Multiplicity** | **Why**                                                                                                                                              |
|-------------------------------------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| Partner proposes Proposal                 | 0..1 to 0..\*    | A proposal may come from staff or volunteers, so not always from a partner. Those proposers are recorded in the proposedBy attribute, not as classes |
| Proposal plans Episode                    | 1 to 1..\*       | A proposal has at least one episode; a series has several                                                                                            |
| Proposal receives ProposalDecision        | 1 to 0..\*       | A proposal can be returned and later accepted                                                                                                        |
| Proposal names as proposed Contributor    | 0..\* to 0..\*   | FR1 includes proposed contributors                                                                                                                   |
| Contributor makes Contribution            | 1 to 0..\*       | The same person contributes to several episodes in different roles                                                                                   |
| Episode involves Contribution             | 1 to 0..\*       | Each contribution is to one episode                                                                                                                  |
| Contribution is covered by Consent        | 1 to 0..\*       | A new consent may be needed (Q3)                                                                                                                     |
| Episode is recorded in RecordingSession   | 1 to 0..\*       | A session may be repeated or supplemented (A12)                                                                                                      |
| RecordingSession produces SourceRecording | 1 to 0..\*       | One session can create many files                                                                                                                    |
| Episode is edited into Draft              | 1 to 0..\*       | Several drafts can exist                                                                                                                             |
| Draft draws on SourceRecording            | 0..\* to 1..\*   | A draft is built from at least one source                                                                                                            |
| Permission is needed by Draft             | 0..\* to 1..\*   | A draft may need no permissions; a permission relates to at least one draft                                                                          |
| Draft is reviewed in DraftReview          | 1 to 0..\*       | A returned draft is reviewed again                                                                                                                   |
| Draft is released as Publication          | 1 to 0..\*       | An approved draft can go to more than one channel                                                                                                    |
| PublicationChannel carries Publication    | 1 to 0..\*       | A channel carries many publications                                                                                                                  |
| Publication is amended by Correction      | 1 to 0..\*       | A publication can be corrected more than once                                                                                                        |
| Correction introduces replacement Draft   | 0..1 to 0..1     | Only a new audio version brings a replacement; a metadata correction does not                                                                        |

Several multiplicities come from reasoning, not scenario evidence, for example zero or more consents per contribution and zero or more publications per draft. They are assumptions, to be confirmed with Q3 and Q4.

## 9.3 Modelling decisions

- **No Series class (A10).** A series is a proposal with several episodes. A separate class would duplicate it.

- **Contribution links Contributor, Episode and Consent,** so one person can have a different role and consent per episode.

- **Consent and Permission are separate.** Consent comes from a contributor; permission is for third-party material.

- **Draft carries approved status (A11).** How versions relate is unresolved (Q4), so a richer version structure is not justified.

- **Publication links to Draft, not directly to Episode.** The episode is reached through the draft.

- **Blocked is not a class.** It is derived from outstanding permission, consent or decision (BR5).

- **Staff are attributes, not classes.** decidedBy and reviewedBy record who acted; staff are actors, not domain concepts.

- **Proposers.** Proposals can come from staff, volunteers or partners. Only partners are a class, because they are external organisations with their own interest in progress and dates. Staff and volunteers are roles inside the collective, so a proposal from one of them has no partner link and records the person in proposedBy. If a proposer ever needs its own history, a Proposer class could generalise the three.

# 10. Traceability matrix

## 10.1 Principal chains


| **Problem**   | **Stakeholder and goal**                                 | **Requirement** | **Use case**   | **Gherkin** | **Domain concepts**                                                                         | **Rules** |
|---------------|----------------------------------------------------------|-----------------|----------------|-------------|---------------------------------------------------------------------------------------------|-----------|
| P1            | Coordinator: reliable overview (G3)                      | FR12            | UC11           | GS2         | Proposal, ProposalDecision, Consent, Permission, DraftReview, RecordingSession, Publication | BR1, BR5  |
| P2            | Proposal editor: clear recorded decision (G1)            | FR3, FR12       | UC2, UC11      | GS1, GS2    | Proposal, ProposalDecision                                                                  | BR1, BR2  |
| P3            | Technical volunteer: usable files identified (G6)        | FR7             | UC6            | none        | SourceRecording, Draft, RecordingSession, Episode                                           | Q4 open   |
| P4 (consent)  | Contributors: consent and use understood (G10)           | FR5             | UC4            | none        | Consent, Contribution                                                                       | C5        |
| P4 (comments) | Authorised editor: comments together (G8)                | FR9             | UC8            | GS3, GS4    | DraftReview, Draft                                                                          | BR3, BR4  |
| P5            | Partners: realistic date and explanation (G12)           | FR10            | UC9            | GS5         | Publication, PublicationChannel                                                             | none      |
| P6            | Technical editor, coordinator: blockers visible (G7, G3) | FR8, FR9, FR12  | UC7, UC8, UC11 | GS4         | Permission, Consent, Draft, DraftReview                                                     | BR5       |
| P7            | Authorised editor: corrections distinguished (G9)        | FR11            | UC10           | none        | Correction, Publication, Draft                                                              | BR8       |
| P8            | Session organiser: kit confirmed (G4, G5)                | FR6             | UC5            | none        | RecordingSession, Episode                                                                   | none      |
| P9            | Partners, volunteers: see only what is appropriate       | NFR1            | none           | none        | none                                                                                        | BR6, BR7  |

## 10.2 Requirement-by-requirement

| **Req** | **Pri.** | **Scope** | **Goal** | **Use case** | **Gherkin** | **Domain concepts**                                                                         | **Rules**     |
|---------|----------|-----------|----------|--------------|-------------|---------------------------------------------------------------------------------------------|---------------|
| FR1     | Must     | S1        | G13      | UC1          | none        | Proposal, Episode, PartnerOrganisation, Contributor                                         | none          |
| FR2     | Must     | S1        | G13      | UC1          | none        | Proposal, Episode                                                                           | A10           |
| FR3     | Must     | S1        | G1       | UC2          | GS1, GS2    | Proposal, ProposalDecision                                                                  | BR1, BR2      |
| FR4     | Must     | S2        | G14      | UC3          | none        | Contributor, Contribution, Episode                                                          | none          |
| FR5     | Must     | S3        | G10      | UC4          | none        | Consent, Contribution                                                                       | C5            |
| FR6     | Should   | S4        | G4, G5   | UC5          | none        | RecordingSession, Episode                                                                   | none          |
| FR7     | Must     | S5        | G6       | UC6          | none        | SourceRecording, Draft, RecordingSession, Episode                                           | A11           |
| FR8     | Must     | S7        | G7       | UC7, UC8     | GS4         | Permission, Draft                                                                           | BR5           |
| FR9     | Must     | S6        | G8       | UC8          | GS3, GS4    | DraftReview, Draft                                                                          | BR3, BR4      |
| FR10    | Should   | S8        | G12      | UC9          | GS5         | Publication, PublicationChannel, Draft                                                      | none          |
| FR11    | Should   | S9        | G9       | UC10         | none        | Correction, Publication, Draft                                                              | BR8           |
| FR12    | Must     | S10       | G3       | UC11         | GS2, GS4    | Proposal, ProposalDecision, Consent, Permission, DraftReview, RecordingSession, Publication | BR1, BR5, A13 |

| **NFR** | **Quality**    | **Linked to**     | **Rules** |
|---------|----------------|-------------------|-----------|
| NFR1    | Access         | P9, S11           | BR6, BR7  |
| NFR2    | Performance    | FR12, UC11        | none      |
| NFR3    | Usability      | FR7, UC6          | none      |
| NFR4    | Retrievability | P1, all use cases | none      |

## 10.3 Quality check and known gaps

- Every FR has a use case, every use case has a requirement and a goal, and all 15 domain classes appear. No Must requirement is isolated.

- FR1, FR2, FR4, FR5 and FR7 are Must requirements with no Gherkin scenario. The brief allows three to five examples, so each is traced through a use case instead. FR5 is the weakest, because consent is a problem the scenario stresses.

- Requirements without a Gherkin example are still verifiable: each has a pass-or-fail verification method in Section 4.2 and acceptance criteria in the user stories (Appendix B). Consent (FR5) is verified by recording one consent in each of the three forms and checking that form, use, date and evidence location are kept.

- NFR1 depends on whether partner or volunteer views exist at all (Q9), so it is worded conditionally.

- P3, P7 and P8 depend on open questions (Q4, Q6) or have no stated rule, so their requirements record information without imposing a rule.

- G2 and G11 are deferred goals with no requirement, by design (Sections 2.3 and 3.3).

- BR6 and BR7 constrain every use case and are not the goal of one actor, so they link to NFR1 and not to a single use case.

# 11. Reflection

*\[To be completed.\]*

# 12. AI declaration

*\[To be completed.\]*

# Appendix A. Repository artefacts

Status shows what exists now. Items marked to create must be added to the repository before submission and committed with readable history.