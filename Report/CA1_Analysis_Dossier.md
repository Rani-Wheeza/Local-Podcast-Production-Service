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

