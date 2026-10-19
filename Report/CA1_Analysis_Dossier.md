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



