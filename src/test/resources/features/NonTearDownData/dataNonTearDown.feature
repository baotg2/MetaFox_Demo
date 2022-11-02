@previewSite @NonTearDownData
Feature:  Non TearDown Data On Site

  @AdminAddNewBlogEveryOne
  Scenario: Admin Add New Blog Non Tear Down
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user adds title with value "Brit + Co"
    Then the user want to add photo
    And the user adds description
    And the user adds a category
    And the user adds a tag
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify title of blog is displayed

  @AdminAddNewPublicGroup
  Scenario: Admin Add New Public group
    Given the user logged in as "admin"
    Then the user clicks on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user clicks on input field "name" with value "IMPROVING EDUCATION AND LIVES"
    And the user add value on "select-type_id" is "School"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user adds description
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "IMPROVING EDUCATION AND LIVES"
    And the user want upload 1 photo
    And the user want to "Save"
    Then the user sees successful flash message

  @AdminAddNewPollMultipleChoice
  Scenario: Admin Add New Poll Public Vote
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user clicks on input field "question" with value "Welcome!What are you looking for today?"
    And the user add value "Something from the LS Lowry Range" on element "1"
    And the user add value "Nothing just browsing" on element "2"
    And the user adds description
    When the user select type "Public votes"
    And the user select type "Allow multiple choices"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Welcome!What are you looking for today?"

  @AdminAddNewAlbumWithPhotoNonTeardown
  Scenario: Admin Add New Album With Photo Non Teardown
    Given the user logged in as "admin"
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 2 photo
    And the user clicks on button "add_new_album"
    When the user clicks on input field "new_album.name" with value "Notebook Mini Album"
    And the user adds description
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/my-albums"

  @AdminAddNewEmptyAlbumNonTearDown
  Scenario: Admin Add Empty Album Non Tear Down
    Given the user logged in as "admin"
    When the browser opened at item "photo" and tab "/photo/album/add"
    And the user clicks on input field "name" with value "Which Academia Aesthetic Are You?"
    And the user add value "Find out in what academia aesthetic you fit in: Classic Academia; Dark Academia; Light Academia; Romantic Academia; Art Academia or Chaotic Academia." on textArea "inputText"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "Which Academia Aesthetic Are You?"
    And the user sees text "This album has no photos/videos uploaded "

  @AdminAddForumNonTearDown
  Scenario: Admin add forum non-tear down
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user adds title with value "AngryBirdsNest"
    And the user adds description
    And the user adds a tag
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees text "AngryBirdsNest"

  @BrainActionOnBlogDetailNonTearDown
  Scenario: Brian action on the blog detail non-tear down
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user searches with text "Brit + Co"
    And the user clicks on the item title
    And the user add comment "Amazing write-ups"
    Then the user sees text "Amazing write-ups"
    And the user clicks on button "reactionButton"

  @AdminAddFeedToGroupNonTearDownData
  Scenario: Admin add feed to group non-tear down data
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "IMPROVING EDUCATION AND LIVES"
    And the user clicks on the item title
    Then the user "whatsHappening" this item
    And the user add comment "I no longer depend on my parents and I am financially independent"
    And the user clicks on button "submit"
    Then the user sees successful flash message

  @UserVoteMultipleChoiceNonTearDownData
  Scenario: Another User Vote Poll Non Tear Down Data
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab ""
    And the user searches with text "Welcome!What are you looking for today?"
    And the user clicks on the item title
    And the user "brian" action vote on random options

  @BrianActionOnAlbumDetailNonTearDownData
  Scenario: Brian Action On Album Detail Non Tear Down Data
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user searches with text "Notebook Mini Album"
    And the user clicks on the item title
    And the user clicks on button "reactionButton"
    Then the user sees result of "reactionResult" displayed
    When the user clicks on button "commentButton"
    And the user add comment "Amazing write-ups"
    Then the user sees text "Amazing write-ups"