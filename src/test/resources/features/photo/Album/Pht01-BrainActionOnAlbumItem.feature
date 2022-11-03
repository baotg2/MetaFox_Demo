@app_photo @album_public @brian
Feature: Brian process on album item

  Scenario: Brian Add New Album Without Image
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want to add new album
    And the user clicks on button "buttonSubmit"
    Then the user sees div element "error" displayed

  Scenario: Brian Add New Album With Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user verify "itemMedia" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 2 photo
    And the user want to add new album
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/my-albums"
    Then the user verify "itemMedia" after upload

  Scenario: Brian Search His Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And within the sidebar
    When the user searches with text "Album"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user sees text "NewAlbum"

  Scenario: Brian Reaction On Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user sees text "All Albums"
    And the user clicks on div "itemMedia" and process
    And the user clicks on button "reactionButton"
    Then the user sees result of "reactionResult" displayed

  Scenario: Brian Edit On Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user searches with text "Album"
    And the user opens action menu
    When the user clicks on "Edit Photo Album"
    And the user clicks on input field "name" with value "Auto Test New AlbumName"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Delete Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user searches with text "Auto Test New AlbumName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user opens action menu
    When  the user clicks on menu item "delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Add Empty Album
    Given the user logged in as "brian"
    When the browser opened at item "photo" and tab "/photo/album/add"
    And the user clicks on input field "name" with value "IsEmptyAlbum"
    And the user add value "TestAtoDescription" on textArea "inputText"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "IsEmptyAlbum"
    And the user sees text "This album has no photos/videos uploaded "

  Scenario: Brian Search Empty Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my-albums"
    Then the user sees text "itemTitle" with value "IsEmptyAlbum"

  Scenario: Brian Add Photo To Empty Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user add value on "select-album" is "IsEmptyAlbum"
    And the user want upload 1 photo
    And the user adds category "Comedy"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the browser opened at item "photo" and tab "/photo/albums"
    Then the user sees text "itemTitle" with value "IsEmptyAlbum"

  Scenario: Brian Delete Empty Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user searches with text "IsEmptyAlbum"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user opens action menu
    When  the user clicks on menu item "delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message