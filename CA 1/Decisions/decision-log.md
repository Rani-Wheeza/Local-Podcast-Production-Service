# Decision log

Key analysis decisions, the options considered and the reasons. Identifiers refer to the dossier.

| ID | Decision | Alternatives considered | Reason | Related |
|---|---|---|---|---|
| D1 | Partners and contributors are offstage stakeholders, not actors | Make them supporting actors with direct access | The scenario leaves direct access unresolved; staff are assumed to enter information for them. Revisit if Q9 is answered yes | A5, Q9, Section 3.2 |
| D2 | Contributor concerns are deferred from the first release (no requirement, use case or goal G11) | Keep as a Could requirement (FR13) | The scenario confirms the need but gives no process, owner or visibility rule, so a requirement would invent policy. Dropping it also keeps the catalogue at 12 requirements | Q11, S9, G11 |
| D3 | Blocked, awaiting review and approved are kept as separate draft states | Treat a draft with nothing outstanding as automatically approved | The scenario says a draft can be complete but blocked; approval remains the authorised editor's decision | BR3, BR5, UC8, GS3, GS4 |
| D4 | Proposal editor and authorised editor are separate actors | One Editor actor | The scenario names two decision points: proposal review and pre-publication review. Whether one person holds both is a separate question | Q5, Q13 |
| D5 | No Series class; a series is a proposal with several episodes | A Series class above Proposal | A separate class would duplicate Proposal | A10 |
| D6 | Approved version is a status of Draft, not a class | Separate ApprovedVersion class | How versions relate is unresolved, so a richer structure is not justified | A11, Q4 |
| D7 | Held proposals are listed separately from proposals with no decision in the overview | List only proposals awaiting a decision | A held proposal has a decision but may need future attention. This is an inference | A13, FR12 |
| D8 | The system records information about audio files, not the audio itself | Store the audio | Large files are not always practical to upload from outside the studio | A1, Q8 |
| D9 | NFR2 (decision history) removed as a non-functional requirement | Keep as a quality requirement | Recording who decided and when is functional and sits in FR3, FR9 and FR11 | FR3, FR9, FR11 |
| D10 | Staff and volunteers are not domain classes; who acted is an attribute | Staff and Volunteer classes | They are roles and actors, not things the system records. Proposers other than partners use the proposedBy attribute | Section 9.3 |
| D11 | Non-functional targets are labelled proposed, not findings | Present figures as facts | The scenario gives no performance or usability numbers | NFR2 to NFR4, Q12 |