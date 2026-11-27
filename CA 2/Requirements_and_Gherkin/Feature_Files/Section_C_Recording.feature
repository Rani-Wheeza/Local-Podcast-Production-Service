Feature: Recording sessions, source recordings, drafts and permissions
  The collective needs a record of a session and its equipment,
  the files that session produced, the drafts that use those files,
  and whether permission for third-party material is still outstanding.

  # Links: FR6, FR7, FR8 | UC5, UC6, UC7 | BR5 | A11, RD-04, RD-12
  # Scenarios use GS40–GS49 (DEC-06).
  # Steps follow the Section C operation contracts OC05–OC09.
  # The episode name is the one already used in Sections B and D.
  # An outstanding permission is visible here. The release decision stays in UC8 (GS4).

  Rule: A session keeps its date, location, equipment and any missing item (FR6)

    @FR6 @UC5 @success @GS40
    Scenario: Record a session and its missing equipment
      Given the episode "Episode 2: The Last Currach Builder" exists
      When the production coordinator records a session on 3 November in the "studio" at "Collective studio" needing a "recorder" and a "microphone", with the "microphone" reported missing
      Then the session is linked to that episode
      And the session shows the date 3 November, the location "studio" at "Collective studio" and the equipment "recorder" and "microphone"
      And the session shows the "microphone" as reported missing

    @FR6 @UC5 @boundary @GS41
    Scenario: Missing equipment remains visible without stopping the session
      Given the episode "Episode 2: The Last Currach Builder" exists
      When the production coordinator records a session on 3 November in the "studio" at "Collective studio" needing a "recorder" and a "microphone", with the "microphone" reported missing
      Then the session is recorded
      And the session shows the "microphone" as reported missing
      And the session is not refused because an item is missing

    @FR6 @UC5 @alternative @GS47
    Scenario: Record a session with no missing equipment
      Given the episode "Episode 2: The Last Currach Builder" exists
      When the production coordinator records a session on 4 November in the "studio" at "Collective studio" needing a "recorder" and a "microphone", with no item reported missing
      Then the session is recorded
      And the session shows the date 4 November, the location "studio" at "Collective studio" and the equipment "recorder" and "microphone"
      And the session does not show an item as missing

  Rule: Source recordings keep their working names, and a draft names the sources it uses (FR7)

    @FR7 @UC6 @success @GS42
    Scenario: Record several source recordings for one session
      Given a recording session exists for "Episode 2: The Last Currach Builder"
      When the technical volunteer records a source recording with working name "EP2-interview-take1.wav" and usability note "usable"
      And the technical volunteer records a source recording with working name "EP2-interview-take2.wav" and usability note "background noise"
      Then both source recordings are linked to that session
      And the session shows the working name "EP2-interview-take1.wav"
      And the session shows the working name "EP2-interview-take2.wav"

    @FR7 @UC6 @success @GS43
    Scenario: Link sources to a draft
      Given the source recordings "EP2-interview-take1.wav" and "EP2-interview-take2.wav" exist for "Episode 2: The Last Currach Builder"
      When the technical volunteer records a draft of that episode with the description "first edit" using both source recordings
      Then the draft is linked to that episode
      And the draft shows version number 1
      And the draft is shown as awaiting review
      And the draft shows the source recordings "EP2-interview-take1.wav" and "EP2-interview-take2.wav"

    @FR7 @UC6 @UC8 @A11 @alternative @GS44
    Scenario: Identify the approved draft
      Given the draft "first edit" of "Episode 2: The Last Currach Builder" is awaiting review
      And a later draft "second edit" of that episode is awaiting review
      When the authorised editor approves the draft "first edit"
      Then the draft "first edit" is shown as approved
      And the draft "second edit" is shown as awaiting review
      And the two drafts remain separate records for that episode

  Rule: Permission status is kept against the draft, and an outstanding permission is visible (FR8)

    @FR8 @UC7 @success @GS45
    Scenario: Record granted and outstanding permissions
      Given the draft "Episode 2: The Last Currach Builder" exists
      When the technical editor records a granted permission for the music in the draft
      And the technical editor records an outstanding permission for the archive clip in the draft
      Then the draft shows the music permission as granted
      And the draft shows the archive clip permission as outstanding

    @FR8 @UC7 @BR5 @boundary @GS46
    Scenario: Display an outstanding permission
      Given the draft "Episode 2: The Last Currach Builder" has an outstanding permission for its archive clip
      When the technical editor views the draft's permissions
      Then the draft shows the archive clip permission as outstanding
      And the release decision is not recorded by this view
