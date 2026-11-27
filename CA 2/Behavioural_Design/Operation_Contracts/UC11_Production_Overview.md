# UC11 View the production overview: SSD and operation contracts

**Board item:** #25 SSD and operation contracts – UC11 production overview (shared)
**Owner:** Rani | **Reviewer:** Tsubasa, Jack, Arno
**Diagram:** `CA 2/Diagrams/System_Sequence_Diagrams/SSD_UC11_ViewProductionOverview.puml`

UC11 reads records made in every section, so this file also fixes how each overview list is derived. Sections A–D must use the same rules when they mark something as blocked or awaiting a decision.

## System operations

| Operation | Type | Contract |
|---|---|---|
| `viewProductionOverview()` | Query | CO11.1 |
| `viewDraftBlockers(draft)` | Query | CO11.2 |

Both operations change nothing. Their contracts state what is returned and how it is derived, because that is where the business rules apply.

## CO11.1: viewProductionOverview

| Item | Content |
|---|---|
| Operation | `viewProductionOverview()` |
| Cross-references | UC11, FR12, S10, G3, BR1, BR5, A13, DEC-05 · GS2, GS4 |
| Preconditions | The user acts as production coordinator. |
| Postconditions | None. No object is created, changed or associated. |
| Returns | One heading per category, derived as in the table below. |
| Controlled failures | A category with no entries is shown as empty, not omitted. |

| Category | Derived from | Rule |
|---|---|---|
| Proposals awaiting a decision | `Proposal` with no `ProposalDecision`, or whose latest decision is returned for revision | BR1 · returned-for-revision is an inference from UC2 (the proposal stays open) |
| Proposals held for future consideration | `Proposal` whose latest `ProposalDecision.outcome` is held | A13 · listed apart from the category above |
| Upcoming recording sessions | `RecordingSession` with `date` today or later | FR6 |
| Missing equipment | Upcoming `RecordingSession` with an item reported missing | FR6 · does not stop the session (US5) |
| Missing consent | `Contribution` on an episode with no `Consent` | FR5, BR5, DEC-05 |
| Outstanding permissions | `Permission` with status outstanding, with the drafts that need it | FR8, BR5 |
| Drafts awaiting review | `Draft.status` = awaiting review | FR9, BR3 |
| Blocked drafts | `Draft` with at least one blocker (see below), each blocker named | BR5, DEC-05 |
| Scheduled publications | `Publication` with a `scheduledDate` and no `actualDate` | FR10 |

**A draft is blocked when any of these is true (BR5, DEC-05):**
1. a `Permission` it needs has status outstanding;
2. a `Contribution` on its episode has no `Consent` ("contributor confirmation", Q14);
3. its `status` is returned for changes and it has not been reviewed again (outstanding editorial decision, Q15).

A draft that is awaiting review, postponed or withdrawn is **not** blocked by its status alone. Blocked is independent of review status: a draft can be both awaiting review and blocked (GS4).

## CO11.2: viewDraftBlockers

| Item | Content |
|---|---|
| Operation | `viewDraftBlockers(draft)` |
| Cross-references | UC11, FR12, BR5, DEC-05 · GS4 |
| Preconditions | `draft` exists. The user acts as production coordinator. |
| Postconditions | None. |
| Returns | Each blocker for `draft`, by the three rules above: the permission and its material, the contributor and episode missing consent, or the review outcome and date. An empty list if the draft is not blocked. |
| Controlled failures | Draft not found: nothing is returned. |

## Notes for the group

- **Gherkin gap:** only GS2 and GS4 touch UC11. The other categories have no scenario. UC11 is shared and has no number block. Proposed: GS50–GS59 for shared scenarios (a decision-log entry if agreed).
- **Inference to confirm:** a proposal returned for revision is listed as awaiting a decision, because UC2 keeps it open for a later decision.
- **Access:** this overview is for internal staff. A partner view, if one exists, must not show internal editorial notes (BR7, NFR1, Q9).
- **Performance:** NFR2's proposed 5-second target applies to this operation (Q12).