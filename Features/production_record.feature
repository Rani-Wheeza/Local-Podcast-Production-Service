Feature: Recording decisions and readiness in the production record
  The collective needs a consistent record of proposal decisions,
  draft reviews and publication dates.

  # Links: FR3, FR8, FR9, FR10, FR12 | UC2, UC8, UC9, UC11 | BR1, BR2, BR3, BR5

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

  Rule: A draft is released only when an authorised editor has approved it and nothing is outstanding (BR3, BR5)

    @FR9 @UC8 @success @GS3
    Scenario: Authorised editor approves a reviewed draft with nothing outstanding
      Given the draft "Episode 2: The Last Currach Builder" is awaiting review
      And every contributor consent for the episode is confirmed
      And the permission for the archive clip in the draft is recorded as granted
      When the authorised editor reviews the draft and approves it for the "podcast feed" channel
      Then the draft is recorded as approved for that channel with the editor's name and the date
      And the draft is shown as ready to be scheduled

    @FR8 @FR9 @FR12 @UC8 @BR5 @failure @GS4
    Scenario: Technically complete draft blocked by an outstanding permission
      Given the draft "Episode 2: The Last Currach Builder" is complete and edited
      And the permission for its archive clip is still outstanding
      When the authorised editor reviews the draft for publication
      Then the draft is not released for publication
      And the draft is shown as blocked by the outstanding archive clip permission

  Rule: A change to a publication date keeps its reason (FR10)

    @FR10 @UC9 @alternative @GS5
    Scenario: Publication date moved because another programme is urgent
      Given the episode "Episode 2: The Last Currach Builder" is scheduled for 14 November
      When the production coordinator moves the date to 28 November because another programme has become urgent
      Then the episode is shown as scheduled for 28 November
      And the record shows the earlier date of 14 November and the reason for the change
