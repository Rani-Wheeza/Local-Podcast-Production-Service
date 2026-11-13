# Reconciliation and Expansion Record (CA2)

**Scenario:** 29 Local Podcast Production Service (Kerry Community Media Collective)
**Board item:** Create reconciliation and expansion record
**Status:** Draft for group review. Every decision below is *Proposed* until the group agrees it and records the meeting in Section 8.
**Prepared by:** Rani | **Reviewer:** Arno, Jack, Tsubasa

## 1. Purpose

This record shows how the group moved from four individual CA1 analyses to one agreed analysis baseline for Scenario 29. It records:

- how the four CA1 analyses differ,
- what the group found when it reviewed the selected CA1,
- which items were accepted, changed, merged, rejected or deferred, and why,
- the lecturer's instructions and how the group responded.

The revised analysis baseline (`Group_Documents/Analysis_Baseline/`) applies the decisions in Section 5. Identifiers (FR, BR, UC, A, Q, D) refer to the Scenario 29 CA1 dossier (`CA1_Reference/Rani/CA1_Analysis_Dossier.md`) unless stated otherwise.

## 2. Inputs

| Input | Owner | Location |
|---|---|---|
| CA1 dossier, Scenario 29 Local Podcast Production Service | Rani | `CA1_Reference/Rani/` |
| CA1 specification, Scenario 31 Environmental Sample Testing (KETCo) | Arno | `CA1_Reference/Arno/` |
| CA1 repository, Scenario 11 Atlantic Edge Experiences | Jack | `CA1_Reference/Jack/` |
| CA1 dossier, Scenario 36 Banking Operations Change and Incident Service | Tsubasa | `CA1_Reference/Tsubasa/` |
| Scenario suitability matrix | Group | `Group_Documents/Scenario_Suitability_Matrix/` |
| Lecturer instructions after scenario approval | Lecturer | Section 3 |

## 3. Lecturer instructions and group response

| # | Date | Instruction | Group response |
|---|---|---|---|
| L1 | _02/11/26_ | Scenario 29 approved for CA2. | Scenario 29 is the basis for all CA2 artefacts. |
| L2 | _04/11/26_ | CA3 will not run. | CA3 slice specifications are not produced. Sliceability no longer drives the design; the implementation catalogue is ordered by value, dependency and risk instead (RD-19). |
| L3 | _09/11/26_ | Four artefacts removed: architecture and integration contract, CA3 slice specifications, technology decision record, project and contribution evidence. | Removed from the backlog and repository plan. |
| L4 | _04/11/26_ | CA2 weighting increased from 15% to 30% of the module. | No change to scope; noted for planning. |
| L5 | _11/11/26_ | Expansion brief (extra rules, actors, constraints or use cases). | _None received as of this draft. If one is issued, add each item here and a matching decision in Section 5._ |

## 4. How the CA1 analyses differ

The four CA1s analyse **different scenarios**, so their requirements and domain content cannot be merged into Scenario 29. Reconciliation therefore works at two levels:

1. **Content:** the Scenario 29 analysis is reviewed critically by the whole group (Section 5.1), rather than adopted unchanged.
2. **Method:** useful techniques from the other three CA1s are applied to Scenario 29 where they improve it (Section 5.2).

| Member | Scenario | Form of CA1 | Method worth reusing | Used? |
|---|---|---|---|---|
| Rani | 29 Podcast | Single dossier with traceability matrix, decision log, 5 Gherkin scenarios | Evidence labels (confirmed, inferred, assumption); full traceability chains | Yes, as the base |
| Jack | 11 Atlantic Edge | Repository of separate artefacts | Detailed use cases in a two-column actor/system format with alternative scenarios; refinement table (keep, refine, reject) | Yes, RD-11 |
| Arno | 31 KETCo | Requirements and business architecture specification | Status rules tied to recorded decisions; sequential version numbers for reports | Yes, RD-12 |
| Tsubasa | 36 Banking | Requirements and domain analysis dossier | Evidence vs uncertainty register; approval and post-change review workflows | Partly, RD-13 |

_Each member: confirm or correct your own row before this record is approved._

## 5. Reconciliation decisions

Decision types: **Accepted** (kept unchanged), **Changed** (kept but corrected), **Merged** (method or content brought in from another CA1), **Rejected**, **Deferred**.

### 5.1 Review of the Scenario 29 analysis

| ID | Item | Type | Finding | Decision | Affects | Status |
|---|---|---|---|---|---|---|
| RD-01 | Scope S1–S11 and out-of-scope list | Accepted | Boundary is clear and was a reason for selection. | Keep unchanged. | Baseline scope | Proposed |
| RD-02 | FR1–FR12, BR1–BR8, C1–C5 | Accepted | Identifiers are already traced to use cases and goals. | Keep the same IDs so traceability is not broken. Changes below are made by editing, not renumbering. | Baseline, Gherkin tags | Proposed |
| RD-03 | Decisions D1, D2, D4, D5, D6, D8, D10 | Accepted | Still valid for design. | Carry forward into the group decision log with a reference to CA1. | Decision log | Proposed |
| RD-04 | Draft states: D3 and Section 6.4 call *Blocked* a draft state, but Section 9.3 says Blocked is derived and not stored | Changed | The two statements can be read as conflicting. For design, the group needs one rule. | `Draft.status` stores only the review state: awaiting review, approved, returned for changes, postponed, withdrawn. **Blocked is derived** from outstanding items (BR5) and never stored. Update the glossary and state table. | Glossary, domain model, DCD, UC8, GS4 | Proposed |
| RD-05 | BR5 says "contributor confirmation", but the domain model and Section 9.3 say "consent" | Changed | Two terms for what may be one thing. No class records a "confirmation". | Treat contributor confirmation as **an outstanding Consent for a Contribution on the draft's episode**, and use "consent" everywhere. Raise Q14 in case the scenario means something else (for example, credit confirmation). | BR5, glossary, Gherkin | Proposed |
| RD-06 | BR5 says an outstanding "editorial decision" blocks a draft, but a draft with no review yet is *awaiting review*, not blocked | Changed | Read literally, every unreviewed draft would be blocked, which contradicts the CA1 state table. | "Editorial decision outstanding" means a review was **returned for changes or postponed** and has not been resolved. An unreviewed draft is awaiting review. Raise Q15 to confirm. | BR5, UC8, Gherkin | Proposed |
| RD-07 | A9 says approval applies per channel, and BR3 says the review covers the intended channel, but `DraftReview` has no link to a channel | Changed | The model cannot record which channel an approval is for. | Add an association: *DraftReview is for PublicationChannel* (1 to 0..\*). | Domain model, DCD, UC8 | Proposed |
| RD-08 | A correction may introduce a replacement draft, but nothing says that draft is reviewed | Changed | BR3 says every draft is reviewed before publication; the CA1 does not apply it to replacements. | State explicitly: **a replacement draft follows the normal review (UC8) before it is published.** | BR3, UC10, UC8 | Proposed |
| RD-09 | Gherkin coverage: FR1, FR2, FR4, FR5, FR6, FR7 and FR11 have no scenario (CA1 Section 10.3) | Changed | The CA1 brief allowed 3–5 examples; CA2 needs principal success, alternative, failure and boundary behaviour for selected use cases. | Each section adds scenarios for its use cases. **FR5 (consent) is first**, because the CA1 itself names it the weakest gap. Keep the existing tag convention (`@FRx @UCx @type`). | Feature files | Proposed |
| RD-10 | Only UC2 has a detailed specification | Changed | SSDs need detailed main and alternative flows for every use case they cover. | Write detailed specifications for every target use case (see RD-11 for format). | Baseline, SSDs | Proposed |

### 5.2 Methods merged from other CA1s

| ID | From | Item | Decision | Affects | Status |
|---|---|---|---|---|---|
| RD-11 | Jack | Two-column actor/system use-case format with named alternative scenarios | Adopt for all detailed use cases in the baseline. The actor/system split maps directly onto SSD messages and returns. | Baseline, SSDs | Proposed |
| RD-12 | Arno | Sequential version numbers for reports | Add `versionNumber` to `Draft`, sequential per episode. This gives each draft a stable identifier (FR7) without deciding how versions relate, which stays open under Q4. | Domain model, DCD, FR7 | Proposed |
| RD-13 | Tsubasa | Evidence vs uncertainty register | The Scenario 29 CA1 already separates known evidence from uncertainty (Section 1.5), so no new artefact. Approval and review workflows from Scenario 36 are noted as a comparison for UC2 and UC8 design. | None | Proposed |

### 5.3 Rejected

| ID | Item | Reason | Status |
|---|---|---|---|
| RD-14 | Requirements, rules and classes from Scenarios 11, 31 and 36 | They belong to different organisations. Adding them would create requirements Scenario 29 does not support. | Proposed |
| RD-15 | A `Series` class | Still rejected for the reason in D5: a series is a proposal with several episodes. | Proposed |
| RD-16 | Storing audio files in the system | Still rejected (D8, A1, C3). | Proposed |

### 5.4 Deferred

| ID | Item | Reason | Status |
|---|---|---|---|
| RD-17 | Contributor concerns (G11, Q11) | No process, owner or visibility rule in the scenario. Designing it would invent policy. Reopen only if an expansion brief adds it. | Proposed |
| RD-18 | Reconsidering an approved proposal after significant change (G2, Q2) | "Significant change" is undefined. | Proposed |
| RD-19 | NFR2–NFR4 targets | Remain proposed targets. They do not drive the CA2 design. | Proposed |

## 6. Effect on the analysis baseline

The baseline is the Scenario 29 CA1 analysis with these changes applied:

| Artefact | Change | From |
|---|---|---|
| Business rules | Reword BR5 (consent, unresolved review outcome). Extend BR3 to replacement drafts. | RD-05, RD-06, RD-08 |
| Glossary | Blocked defined as derived. Contributor confirmation mapped to consent. Draft status values listed. | RD-04, RD-05 |
| Use cases | Detailed specifications for all target use cases in the two-column format. | RD-10, RD-11 |
| Domain model | Add *DraftReview is for PublicationChannel*. Add `Draft.versionNumber`. Draft status values limited to review states. | RD-04, RD-07, RD-12 |
| Gherkin | New scenarios for FR1, FR2, FR4, FR5, FR6, FR7, FR11. | RD-09 |
| Decision log | Carry forward accepted CA1 decisions. Add one entry per RD decision once agreed. | RD-03 |

## 7. New clarification questions

These continue the CA1 numbering (Q1–Q13).

| ID | Question | Raised by | Affects |
|---|---|---|---|
| Q14 | Is "contributor confirmation" in BR5 the same as consent, or a separate confirmation (for example, of credit or content)? | RD-05 | BR5, Consent, Contribution |
| Q15 | Which editorial decisions block a draft: an unresolved returned or postponed review, or something else? | RD-06 | BR5, UC8 |
| Q16 | Is a lecturer expansion brief expected, and by when? | L5 | Whole baseline |

## 8. Group agreement

| Item | Record |
|---|---|
| Meeting date | _date_ |
| Members present | _names_ |
| Decisions agreed | _list RD numbers_ |
| Decisions changed at the meeting | _RD number and what changed_ |
| Reviewer sign-off | _name, date_ |
| Board item moved to Done | _date_ |
