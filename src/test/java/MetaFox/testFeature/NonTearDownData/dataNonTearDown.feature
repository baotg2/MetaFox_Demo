@MetaFox @NonTearDownData
Feature:  Non TearDown Data On Site

  @AdminAddNewBlogEveryOne
  Scenario: Admin Add New Blog Everyone
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "Brit + Co"
    Then the user want to add photo
    And the user add description on items "Blog"
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonSubmit"
    And the user see message "blogCreate" displayed
    Then the user verify title of blog is displayed

  @AdminAddNewPublicGroup
  Scenario: Admin Add New Public group
    Given the user logged in as "admin"
    Then the user action on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user action on input field "name" with value "IMPROVING EDUCATION AND LIVES"
    And the user add value on "select-type_id" is "School"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add description on items "Group"
    And the user add value on "select-reg_method" is "Public"
    And the user click on button "buttonSubmit"
    Then the user see title h2 "IMPROVING EDUCATION AND LIVES" is displayed
    And the user want upload 1 photo
    And the user want to "Save"
    Then the user see message "Update cover successfully" displayed

  @AdminAddNewPollMultipleChoice
  Scenario: Admin Add New Poll Public Vote
    Given the user logged in as "admin"
    When the user action on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user action on input field "question" with value "Welcome!What are you looking for today?"
    And the user add value "Something from the LS Lowry Range" on element "1"
    And the user add value "Nothing just browsing" on element "2"
    And the user add description on items "Polls"
    When the user select type "Public votes"
    And the user select type "Allow multiple choices"
    And the user click on button "buttonSubmit"
    Then the user see title "Welcome!What are you looking for today?" is displayed

  @AdminAddNewAlbumWithPhotoNonTeardown
  Scenario: Admin Add New Album With Photo Non Teardown
    Given the user logged in as "admin"
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 2 photo
    And the user click on button "add_new_album"
    When the user action on input field "new_album.name" with value "Notebook Mini Album"
    And the user add description on items "Album"
    And the user click on button "buttonSubmit"
    And the user see message "Media item successfully uploaded." displayed
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/my-albums"

  @AdminAddNewEmptyAlbumNonTearDown
  Scenario: Admin Add Empty Album Non Tear Down
    Given the user logged in as "admin"
    When the browser opened at item "photo" and tab "/photo/album/add"
    And the user action on input field "name" with value "Which Academia Aesthetic Are You?"
    And the user add value "Find out in what academia aesthetic you fit in: Classic Academia; Dark Academia; Light Academia; Romantic Academia; Art Academia or Chaotic Academia." on textArea "inputText"
    When the user click on button "buttonSubmit"
    Then the user see message "Photo Album created successfully" displayed
    Then the user see title "Which Academia Aesthetic Are You?" is displayed
    And the user see "This album has no photos/videos uploaded" is displayed on user profile

  @AdminAddForumNonTearDown
  Scenario: Admin add forum non-tear down
    Given the user logged in as "admin"
    When the user action on "More"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user action on input field "title" with value "AngryBirdsNest"
    And the user add description on items "Forum"
    And the user add value on "tags-tags" is "tag-tag"
    When the user click on button "buttonSubmit"
    Then the user see message "Thread created successfully" displayed
    And the user see title "AngryBirdsNest" is displayed