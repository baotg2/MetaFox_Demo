@previewSite @NonTearDownData
Feature:  Non TearDown Data On Site

  Scenario: Admin Attach Photo From Feed
    Given the user logged in as "Admin"
    And the browser opened at "/"
    And within the content
    When the user want upload 1 photo
    And within the status composer
    And the user clicks on button "submit"
    Then the user sees successful flash message

  Scenario: Admin Add New Blog Non Tear Down
    Given the user logged in as "admin"
    And the browser opened at "/blog/add"
    Given within the content
    When the user adds title with value "Brit + Co"
    And the user want to add photo
    And the user adds description
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Add New Public group
    Given the user logged in as "admin"
    And the browser opened at "/group/add"
    Given within the content
    And the user add on "inputName" with value "IMPROVING EDUCATION AND LIVES"
    And the user types a sentence in "inputText"
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Add New Poll Public Vote
    Given the user logged in as "admin"
    And the browser opened at "/poll/add"
    And within the content
    When the user clicks on input field "question" with value "Welcome!What are you looking for today?"
    And the user adds description
    And the user add value "Something from the LS Lowry Range" on element "1"
    And the user add value "Nothing just browsing" on element "2"
    When the user select type "Public votes"
    And the user select type "Allow multiple choices"
    And the user clicks on button "buttonSubmit"

  Scenario: Admin Add New Album With Photo Non Teardown
    Given the user logged in as "admin"
    And the browser opened at "/photo/add"
    And within the content
    When the user want upload 2 photo
    And the user clicks on button "add_new_album"
    When the user clicks on input field "new_album.name" with value "Notebook Mini Album"
    And the user types a sentence in "inputNewAlbumDescription"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Add Empty Album Non Tear Down
    Given the user logged in as "admin"
    And the browser opened at "/photo/album/add"
    And within the content
    When the user clicks on input field "name" with value "Which Academia Aesthetic Are You?"
    And the user types a sentence in "inputText"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "Which Academia Aesthetic Are You?"
    And the user sees text "This album has no photos/videos uploaded"

  Scenario: Admin add forum non-tear down
    Given the user logged in as "admin"
    And the browser opened at "/forum/thread/add"
    When the user add value on id "select-forum_id" is "General"
    And the user want to select category at 1 on dropdown list "select-forum_id"
    And the user adds title with value "AngryBirdsNest"
    And the user adds description
    And the user adds a tag
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees text "AngryBirdsNest"

  Scenario: Admin action on Page non-tear down data
    Given the user logged in as "admin"
    And the browser opened at "/page/add"
    Given within the content
    And the user add on "inputName" with value "Knowledge Sea"
    And the user types a sentence in "inputText"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Given within the slot top
    And the user want upload 1 photo
    And the user "Save"
    Then the user sees successful flash message

  Scenario: Brian action on the blog detail non-tear down
    Given the user logged in as "brian"
    And the browser opened at "/blog/all"
    And within the content
    And the user clicks on the item title
    And the user add comment "Amazing write-ups" on items
    Then the user sees text "Amazing write-ups"
    And the user clicks on button "reactionButton"

  Scenario: Admin add feed to group non-tear down data
    Given the user logged in as "admin"
    And the browser opened at "/group/all"
    And the user clicks on the item title
    Then the user "whatsHappening" this item
    Given within the status composer
    And the user add comment "I no longer depend on my parents and I am financially independent" on items
    And the user clicks on button "submit"
    Then the user sees successful flash message

  Scenario: Another User Vote Poll Non Tear Down Data
    Given the user logged in as "brian"
    And the browser opened at "/poll/all"
    And the user clicks on the item title
    And the user "brian" action vote on random options

  Scenario: Brian Action On Album Detail Non Tear Down Data
    Given the user logged in as "brian"
    Then the browser opened at "/photo/albums"
    And the user clicks on the item title
    And the user clicks on button "reactionButton"
    When the user clicks on button "commentButton"
    And the user add comment "Amazing write-ups"
    Then the user sees text "Amazing write-ups"