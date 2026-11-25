# Section B: CRC Cards

Member 2: Arno Coetzer  
<!-- Language: ASD-STE100 Simplified Technical English. Class names, operation names, requirement IDs and GRASP terms are technical names. They do not change. -->
<!-- Put this text into CA2_Section_B.md, below the applicable heading. Section B uses the scenario numbers GS20 to GS29 (DEC-06). The numbers GS20 to GS25 replace the old numbers GS6 to GS11. -->

The CRC cards give the Section B system operations to classes. The domain classes come from the refined domain model. Section B adds two design classes: a use-case controller and a repository. The GRASP section gives the reasons for these classes.

Each card uses the same layout as Section A (#28). Each responsibility refers to a requirement or a scenario.

### Contributor

| Responsibilities                                          | Collaborators |
|-----------------------------------------------------------|---------------|
| Know its name, contact preference and availability (FR4). | –             |
| Know its contributions to all episodes (GS21).            | Contribution  |
| Change its contact preference and availability.           | –             |

### Contribution

| Responsibilities                                             | Collaborators        |
|--------------------------------------------------------------|----------------------|
| Know its role and agreed credit for one episode (FR4, GS20). | –                    |
| Know its contributor and its episode.                        | Contributor, Episode |
| Create and keep its consent records (FR5, GS22).             | Consent              |
| Tell if the necessary consent is outstanding (BR5, GS24).    | Consent              |

### Episode (Section A, Rani): rows to add

<!-- The group agreed two items. Episode creates Contribution. Section D examines consent through Episode. Ask Rani to add these rows to her card, or record them in #43. -->

| Responsibilities                                                                                                | Collaborators             |
|-----------------------------------------------------------------------------------------------------------------|---------------------------|
| Create and keep its contributions. Keep each role and credit separate (FR4, GS20).                              | Contribution, Contributor |
| Tell if the necessary consent for a contribution is outstanding. The draft review uses this answer (BR5, GS24). | Contribution              |

### Consent

| Responsibilities                                                                                   | Collaborators |
|----------------------------------------------------------------------------------------------------|---------------|
| Know its form, intended use, date given and evidence location (FR5, C5, GS22).                     | ConsentForm   |
| Keep the date when the contributor gave consent. Do not use the date when staff entered it (GS23). | –             |
| Know the contribution that it is for.                                                              | Contribution  |

<!-- One consent is for one contribution until the client answers OQ-B1. If one consent can be for more than one contribution, examine the Creator decision again. -->

### ConsentForm (enumeration)

| Responsibilities                                                                               | Collaborators |
|------------------------------------------------------------------------------------------------|---------------|
| Identify the three permitted forms: paper, email, and verbal at the start of a recording (C5). | –             |

### ContributorConsentController (design class)

| Responsibilities                                                                                                                                       | Collaborators                                                                     |
|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| Receive the Section B system operations: `recordContributor`, `recordContribution`, `updateContributorDetails`, `selectContribution`, `recordConsent`. | –                                                                                 |
| Create a new Contributor from the data in `recordContributor`.                                                                                         | Contributor                                                                       |
| Find contributors and episodes. Save new contributors and episodes.                                                                                    | ContributorRepository, EpisodeRepository (TODO: the group must agree this in #43) |
| Send the contribution to Episode. Send the consent to Contribution.                                                                                    | Episode, Contribution                                                             |
| Send all rules to the domain objects. Do not make decisions.                                                                                           | Contributor, Episode, Contribution                                                |

### ContributorRepository (design class)

| Responsibilities                                                                                      | Collaborators |
|-------------------------------------------------------------------------------------------------------|---------------|
| Keep contributors and find them by identifier.                                                        | Contributor   |
| Find a contributor by name. This makes sure that the system records each person only one time (GS20). | Contributor   |
