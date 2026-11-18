Feature: Proposals and proposal decisions
  The collective needs one record of every proposal, however complete,
  and a recorded decision so that discussion is not mistaken for approval.

  # Links: FR1, FR2, FR3 | UC1, UC2 | BR1, BR2 | A6, A10, A13
  # GS1 and GS2 are kept from the CA1 feature. New scenarios use GS10-GS19.
  # GS10 records the proposer, which depends on the proposed FR1 update (DEC-07).
  # What is required before a decision (Q1) and reopening a decided
  # proposal after a significant change (Q2) stay open, so no scenario tests them.

  Rule: Every proposal is recorded, however complete it is (FR1, FR2)

    @FR1 @UC1 @success @GS10
    Scenario: A partner proposal is recorded with full details
      Given the partner "Dingle Heritage Group" proposes a programme about currach building
      When the production coordinator records the proposal with its subject, intended audience, format, expected duration, proposed contributors and preferred publication period
      Then the proposal is shown with each of those details
      And the proposal shows "Dingle Heritage Group" as the proposer
      And the proposal is shown as having no recorded decision

    @FR1 @UC1 @BR1 @boundary @GS11
    Scenario: A proposal that began as a short email is recorded with only a subject
      Given a volunteer has emailed an idea about the harbour festival
      When the production coordinator records a proposal with only the subject "Harbour festival sounds"
      Then the proposal is recorded
      And the intended audience, format, expected duration, proposed contributors and preferred publication period are shown as not yet known
      And the proposal is shown as having no recorded decision

    @FR2 @UC1 @success @GS12
    Scenario: A series proposal is recorded with its planned episodes
      Given the partner "Dingle Heritage Group" proposes a series about boat building
      When the production coordinator records the series with three planned episodes
      Then the proposal shows three planned episodes
      And each episode is linked to that one proposal

  Rule: A proposal is not approved until an editor's decision is recorded (BR1, BR2)

    @FR3 @UC2 @success @GS1
    Scenario: Proposal accepted with a condition
      Given the partner "Dingle Heritage Group" has proposed a series of three episodes about boat building
      And the proposal has no recorded decision
      When the proposal editor records the decision "accepted" with the condition "each episode is shortened to 25 minutes"
      Then the proposal is shown as accepted with that condition
      And the decision shows the editor's name and the date it was made

    @FR3 @FR12 @UC11 @BR1 @boundary @GS2
    Scenario: A proposal with no decision is distinguished from a held proposal and from an approved one
      Given the proposal "Dingle boat builders" has been discussed with its partner and has no recorded decision
      And the proposal "Harbour festival sounds" has been recorded as held for future consideration
      When the production coordinator views the production overview
      Then "Dingle boat builders" is listed as awaiting a decision
      And "Harbour festival sounds" is listed as held for future consideration
      And neither proposal is shown as approved

    @FR3 @UC2 @BR2 @alternative @GS13
    Scenario: Proposal editor rejects a proposal
      Given the proposal "Tralee shopfronts" has no recorded decision
      When the proposal editor records the decision "rejected" with the reason "outside the collective's current schedule"
      Then the proposal is shown as rejected
      And the decision shows the reason, the editor's name and the date
      And the proposal is not shown as approved

    @FR3 @UC2 @BR2 @alternative @GS14
    Scenario: A proposal returned for revision is later accepted and both decisions are kept
      Given the proposal "Dingle boat builders" was returned for revision with the note "name the proposed contributors"
      And the partner has since supplied the proposed contributors
      When the proposal editor records the decision "accepted"
      Then the proposal is shown as accepted
      And the earlier decision "returned for revision" is still on record with its note, editor's name and date

    @FR3 @UC2 @BR2 @alternative @GS15
    Scenario: Proposal editor holds a proposal for future consideration
      Given the proposal "Harbour festival sounds" has no recorded decision
      When the proposal editor records the decision "held for future consideration" with the note "revisit before next summer"
      Then the proposal is shown as held for future consideration
      And the proposal is not shown as awaiting a decision
      And the proposal is not shown as approved

    @FR3 @UC2 @BR1 @failure @GS16
    Scenario: No decision is recorded when the editor abandons recording it
      Given the proposal "Dingle boat builders" has been discussed with its partner and has no recorded decision
      When the proposal editor starts recording a decision but leaves without saving it
      Then no decision is recorded for the proposal
      And the proposal is still shown as having no recorded decision
      And the proposal is not shown as approved
