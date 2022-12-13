@app_photo @album_public @brian @previewSite
Feature: Brian process on album item

  Scenario: Brian Add New Album Without Image
    Given the user logged in as "brian"
    Then the browser opened at "/photo/add"
    And within the content
    And the user want to add new album
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Media files are required."

  Scenario: Brian Add New Album With Photo
    Given the user logged in as "brian"
    When the browser opened at "/photo/add"
    And within the content
    When the user want upload 2 photo
    And the user want to add new album
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    Then the browser opened at "/photo/my-albums"

  Scenario: Brian Search His Album
    Given the user logged in as "brian"
    Then the browser opened at "/photo/albums"
    And within the sidebar
    When the user searches with text "Album"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    Then the user sees text "NewAlbum"

  Scenario: Brian Reaction On Album
    Given the user logged in as "brian"
    When the browser opened at "/photo/albums"
    And within the sidebar
    And the user sees text "All Albums"
    Given within the content
    And the user clicks on the item title
    And the user clicks on button "reactionButton"
#    Then the user sees result of "reactionResult" displayed

  Scenario: Brian Edit On Album
    Given the user logged in as "brian"
    When the browser opened at "/photo/albums"
    And within the sidebar
    And the user searches with text "Album"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    And the user clicks on menu item "edit"
    When the user add on "inputName" with value "Auto Test New AlbumName"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Another User Report Album
    Given the user logged in as "admin"
    And the browser opened at "/photo/albums"
    And within the content
    And the user clicks on the item title
    And the user opens action menu
    When the user clicks on menu item "report"
    Given within the report
    When the user submits the form
    Then the user sees successful flash message

  Scenario: Brian Delete Album
    Given the user logged in as "brian"
    When the browser opened at "/photo/albums"
    And within the sidebar
    And the user searches with text "Auto Test New AlbumName"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    When  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message

  Scenario: Brian Add Empty Album
    Given the user logged in as "brian"
    When the browser opened at "/photo/album/add"
    And within the content
    And the user add on "inputName" with value "IsEmptyAlbum"
    And the user types a sentence in "inputText"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "IsEmptyAlbum"
    And the user sees text "This album has no photos/videos uploaded"

  Scenario: Brian Search Empty Album
    Given the user logged in as "brian"
    When the browser opened at "/photo/albums"
    And within the sidebar
    And the user searches with text "IsEmptyAlbum"
    Given within the content
    And the user clicks on the item title
    Then the user sees text "IsEmptyAlbum"

  Scenario: Brian Add Photo To Empty Album
    Given the user logged in as "brian"
    When the browser opened at "/photo/add"
    And within the content
    When the user add value on "select-album" is "IsEmptyAlbum"
    And the user want upload 1 photo
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    When the browser opened at "/photo/albums"
    Then the user sees text "IsEmptyAlbum"

  Scenario: Brian Delete Empty Album
    Given the user logged in as "brian"
    When the browser opened at "/photo/albums"
    And within the sidebar
    And the user searches with text "IsEmptyAlbum"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    When  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message