# UC2 consistency check (#45)

**Owner:** Tsubasa  
**Checked:** `DCD_UC2_RecordDecision.puml` (#44), `OID_UC2_*.puml` (#36, #37), CO4 in `CA2_Section_A.md` (#21)

The check compares operation names, the `recorded` or `refused` result, and the four decision outcomes. It does not change the diagrams or the contract.

## Agreed

| Check | Result |
|---|---|
| System operations | `selectProposal(proposal)` and `recordDecision(proposal, outcome, conditions, note)` are operations of `ProposalController` on the DCD. The accepted diagram shows both. CO4 defines `recordDecision`. `selectProposal` is a query and has no contract. |
| Finding and saving | `find(proposal)` and `save(proposal)` match `ProposalRepository`. The controller saves only when the result is `recorded`. `OID_UC2_AlreadyDecided` does not save. |
| Date and editor | `currentDate()` matches `Clock`. The controller passes `editor` and `today` into `Proposal.recordDecision`. |
| Decision rule | `canRecordDecision()` and `leavesProposalOpen()` match the DCD. CO4 allows a decision when none is recorded, or the latest is returned for revision or held. An accepted or rejected proposal creates no new decision. |
| Result words | The domain operation returns `recorded` or `refused` (already decided). The DCD adds no boolean and no `DecisionResult` type for that result (R21). `canRecordDecision()` is a separate boolean. |
| Postconditions | A recorded decision sets the outcome, the decision date and the editor. It sets conditions and note when they are given, and it leaves earlier decisions unchanged. The displayed state comes from the latest decision. `Proposal` has no status attribute. |

## Differences

| Item | DCD | Interaction diagrams | CO4 | Note |
|---|---|---|---|---|
| Outcome names | `accepted`, `rejected`, `returnedForRevision`, `heldForFutureConsideration` | The arguments use `returned for revision` and `held for future consideration`. `currentState()` returns `held` on the held diagram and `returned for revision` on the returned diagram. `accepted` and `rejected` use the same words on the DCD and the diagrams. | accepted, rejected, returned for revision, or held | The four outcomes are the same (BR2). The spelling is not. |
| `create` on `ProposalDecision` | No `create` operation. `Proposal.recordDecision` creates the decision. | Each success diagram sends `create(...)` to a new `ProposalDecision`. | A `ProposalDecision` is created. | The creation message is not an operation on the DCD. |
| Source of `editor` | The controller passes the editor into `Proposal.recordDecision`. | `OID_UC2_Accepted` takes the editor from the signed-in proposal editor. `OID_UC2_Returned`, `OID_UC2_Rejected`, `OID_UC2_Held` and `OID_UC2_AlreadyDecided` say Section A must give the source (R3). | The editor is `decidedBy`. | The main flow and the four alternatives do not name the same source. |

Q2 stays open. A proposal that is already accepted or rejected is not reopened here.
