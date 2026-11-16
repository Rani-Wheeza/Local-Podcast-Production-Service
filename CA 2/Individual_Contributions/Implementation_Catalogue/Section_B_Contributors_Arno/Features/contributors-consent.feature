# Feature: Recording contributors and consent for an episode
#
#  Staff need contributor roles and agreed credit to remain clear per episode,
#  consent evidence to be traceable, and outstanding consent to be visible
#  to the review workflow.
#
#  # CA2 Section B draft. FR4 and FR5 remain unchanged.
#  # Evidence references refer to Evidence_Document_Source_Material.md.
#  # "Agreed credit" corresponds to FR4's "agreed attribution".
#
#  Rule: Contributor roles and agreed credit are retained for each contribution (FR4)
#
#    # E15, E27, E29, E35.
#    # Same-episode multi-role support is an explicit CA2 boundary case.
#
#      # !!! This scenario does not decide whether one consent covers both roles. !!!
#
#    @US3 @FR4 @UC3 @boundary @GS6
#    Scenario: One contributor has two roles on the same episode
#      Given the contributor "Aoife Murphy" is recorded once
#      And "Aoife Murphy" contributes to "Episode 2: The Last Currach Builder" as "presenter" with agreed credit "Presented by Aoife Murphy"
#      When the production coordinator records another contribution by "Aoife Murphy" to that episode as "performer" with agreed credit "Music performed by Aoife Murphy"
#      Then the episode shows both contributions linked to the same contributor
#      And the presenter contribution retains the agreed credit "Presented by Aoife Murphy"
#      And the performer contribution retains the agreed credit "Music performed by Aoife Murphy"
#
#    # E15, E29, E35. Includes contact preference and availability.
#    @US3 @FR4 @UC3 @success @GS7
#    Scenario: One contributor has different roles and credit across two episodes
#      Given "Aoife Murphy" contributes to "Episode 2: The Last Currach Builder" as "interviewee" with agreed credit "Interview with Aoife Murphy"
#      And the contributor's contact preference is "email"
#      And the contributor's availability is "weekday evenings"
#      When the production coordinator records "Aoife Murphy" as a "presenter" for "Episode 3: Harbour Memories" with agreed credit "Presented by Aoife Murphy"
#      Then the contribution to "Episode 2: The Last Currach Builder" retains the role "interviewee" and agreed credit "Interview with Aoife Murphy"
#      And the contribution to "Episode 3: Harbour Memories" retains the role "presenter" and agreed credit "Presented by Aoife Murphy"
#      And the contributor's contact preference remains "email"
#      And the contributor's availability remains "weekday evenings"
#      And both contributions link to the same contributor
#
#  Rule: Each recorded consent retains its form, intended use, date and evidence location (FR5, C5)
#
#    # E16, E19, E20 (A2), E36.
#    # Each example is independent and starts with no recorded consent.
#    @US4 @FR5 @UC4 @C5 @success @GS8
#    Scenario Outline: Consent and its evidence are recorded in each supported form
#      Given "Aoife Murphy" contributes as an "interviewee" to "Episode 2: The Last Currach Builder"
#      And no consent has yet been recorded for that contribution
#      And the contributor gave consent by "<form>" for "publication of this interview on the podcast feed" on "10 November 2026"
#      And the evidence is held at "<evidence location>"
#      When the production coordinator records that consent
#      Then the consent is associated with "Aoife Murphy" and "Episode 2: The Last Currach Builder"
#      And the recorded consent form is "<form>"
#      And the recorded intended use is "publication of this interview on the podcast feed"
#      And the recorded date consent was given is "10 November 2026"
#      And the recorded evidence location is "<evidence location>"
#
#      Examples:
#        | form                               | evidence location                                         |
#        | paper                              | Consent cabinet, folder EP2, form AM-01                    |
#        | email                              | Production mailbox, message EP2-AM-2026-11-10               |
#        | verbal at the start of a recording | Recordings/EP2/interview-AM.wav, 00:00:00 to 00:00:25        |
#
#    # E16, E19, E20 (A2), E36.
#    # Proposed date interpretation: FR5's date is when consent was given,
#    # consistent with dateGiven in E29, not when staff enter it.
#    @US4 @FR5 @UC4 @C5 @alternative @GS9
#    Scenario: Consent already given is entered into the system later
#      Given "Aoife Murphy" contributes as an "interviewee" to "Episode 2: The Last Currach Builder"
#      And the contributor gave paper consent on "10 November 2026" for "publication of this interview on the podcast feed"
#      And the signed evidence is held at "Consent cabinet, folder EP2, form AM-01"
#      And that consent has not yet been entered into the system
#      When the production coordinator records the consent on "12 November 2026"
#      Then the recorded consent form is "paper"
#      And the recorded intended use is "publication of this interview on the podcast feed"
#      And the recorded date consent was given is "10 November 2026"
#      And the recorded evidence location is "Consent cabinet, folder EP2, form AM-01"
#
#  Rule: A draft is not released while required contributor consent is outstanding (E4)
#
#    # E18, E25, E26; aligned with CA1 GS4's observable blocking outcome.
#    # Cross-section scenario: consent information comes from Section B;
#    # the authorised editor and release decision remain in Section D.
#    @US4 @US8 @US11 @FR5 @FR9 @FR12 @UC4 @UC8 @UC11 @BR5 @failure @GS10
#    Scenario: Technically complete draft blocked by outstanding contributor consent
#      Given the draft "Episode 2: The Last Currach Builder" is complete and edited
#      And "Aoife Murphy" has contributed an interview that is included in the draft
#      And the required consent for that interview is still outstanding
#      And all other contributor consents for the episode are confirmed
#      And the permission for its archive clip is recorded as granted
#      And no other permission or editorial decision is outstanding
#      When the authorised editor reviews the draft for publication
#      Then the draft is not released for publication
#      And the draft is shown as blocked by the outstanding contributor consent
#      And the production coordinator's overview identifies the outstanding consent for "Aoife Murphy"
#
#  Rule: Provided partner and volunteer views do not display internal editorial notes (NFR1, BR6, BR7)
#
#    # E17, E18, E37. Conditional: this does not require either view to exist.
#    # @conditional is a classification tag, not an automatic test skip.
#    # The test runner must select this coverage only for provided views.
#    # Contributor details/private correspondence need agreed Q7 permissions.
#    @US12 @NFR1 @BR6 @BR7 @conditional @success @GS11
#    Scenario Outline: A provided restricted view excludes internal editorial notes
#      Given a "<view>" is provided for "Episode 2: The Last Currach Builder"
#      And the episode has an internal editorial note "Internal discussion about the interview edit"
#      When the "<view>" is displayed
#      Then no internal editorial note is displayed in that view
#
#      Examples:
#        | view           |
#        | partner view   |
#        | volunteer view |
