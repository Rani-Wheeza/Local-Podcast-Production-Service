Feature: Review, publication and correction
  The collective needs a record of draft reviews, publication dates
  and corrections after publication.

  # Links: FR8, FR9, FR10, FR11 | UC8, UC9, UC10 | BR3, BR4, BR5, BR8
  # GS3, GS4 and GS5 are kept from the CA1 feature.
  # New scenarios start at GS30. 
  # Postponed and withdrawn are recorded as review outcomes (FR9, BR4).
  # What happens after a withdrawal request, a correction or a replacement stays open (Q6).


  Rule: A draft is released only when an authorised editor has approved it and nothing is outstanding (BR3, BR5)

    @FR9 @UC8 @BR3 @success @GS3
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

    @FR9 @UC8 @BR3 @boundary @GS30
    Scenario: A draft with nothing outstanding is not approved automatically
      Given the draft "Episode 2: The Last Currach Builder" is awaiting review
      And every contributor consent for the episode is confirmed
      And the permission for the archive clip in the draft is recorded as granted
      And no review outcome has been recorded
      When the production coordinator views the draft
      Then the draft is shown as awaiting review
      And the draft is not shown as approved
      And the draft is not shown as ready to be scheduled

    @FR9 @UC8 @BR4 @BR5 @alternative @GS31
    Scenario: Authorised editor returns a draft for changes
      Given the draft "Episode 2: The Last Currach Builder" is awaiting review
      When the authorised editor records the outcome "returned for changes" with the comment "shorten the introduction"
      Then the draft is shown as returned for changes
      And the comment, the editor's name and the date are kept against that draft
      And the draft is shown as blocked
      And the draft is not shown as approved
      And the draft is not shown as ready to be scheduled

    @FR9 @UC8 @BR4 @alternative @GS32
    Scenario: Authorised editor postpones a draft
      Given the draft "Episode 2: The Last Currach Builder" is awaiting review
      When the authorised editor records the outcome "postponed" with the comment "wait for the partner's photographs"
      Then the draft is shown as postponed
      And the comment, the editor's name and the date are kept against that draft
      And the draft is not shown as approved
      And the draft is not shown as ready to be scheduled

    @FR9 @UC8 @BR4 @alternative @GS33
    Scenario: Authorised editor records a draft as withdrawn
      Given the draft "Episode 2: The Last Currach Builder" is awaiting review
      When the authorised editor records the outcome "withdrawn" with the comment "drop this episode from the series"
      Then the draft is shown as withdrawn
      And the comment, the editor's name and the date are kept against that draft
      And the draft is not shown as approved
      And the draft is not shown as ready to be scheduled

  Rule: An approved episode keeps a publication date and channel (FR10)

    @FR10 @UC9 @success @GS34
    Scenario: Publication date and channel are recorded
      Given the draft "Episode 2: The Last Currach Builder" is approved for the "podcast feed" channel
      And the draft is ready to be scheduled
      When the production coordinator records 14 November as the publication date for that channel
      Then the episode is shown as scheduled for 14 November on the "podcast feed" channel

  Rule: A change to a publication date keeps its reason (FR10)

    @FR10 @UC9 @alternative @GS5
    Scenario: Publication date moved because another programme is urgent
      Given the episode "Episode 2: The Last Currach Builder" is scheduled for 14 November on the "podcast feed" channel
      When the production coordinator moves the date to 28 November because another programme has become urgent
      Then the episode is shown as scheduled for 28 November on the "podcast feed" channel
      And the record shows the earlier date of 14 November and the reason "another programme has become urgent"

  # UC9 has no failure scenario. FR10 records a date, a channel and the reason
  # for a change. No rule says the system rejects a publication date.

  Rule: A metadata correction can be distinguished from a new audio version (BR8)

    @FR11 @UC10 @BR8 @success @GS35
    Scenario: A metadata correction stays linked to the original publication
      Given the episode "Episode 2: The Last Currach Builder" is published on the "podcast feed" channel
      When the authorised editor records a metadata correction linked to that publication
      Then the correction is linked to the original publication
      And the correction is shown as a metadata correction
      And the correction is not shown as a new audio version
      And the correction shows the editor's name and the date

    @FR11 @UC10 @BR8 @success @GS36
    Scenario: A new audio version stays linked to the original publication
      Given the episode "Episode 2: The Last Currach Builder" is published on the "podcast feed" channel
      When the authorised editor records a new audio version linked to that publication
      Then the new audio version is linked to the original publication
      And the new audio version is shown as a new audio version
      And the new audio version is not shown as a metadata correction
      And the new audio version shows the editor's name and the date

  # UC10 has no failure scenario. Q6 leaves the handling of a correction or
  # replacement open, so the scenario above only records the distinction (FR11, BR8).