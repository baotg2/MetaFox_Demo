@MetaFox @photo  @albumFunction_Brain
Feature: Brian process on album item

  @BrianAddNewAlbumWithoutImage
  Scenario: Brian Add New Album Without Image
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want to add new album
    And the user clicks on button "buttonSubmit"
    Then the user see div element "error" displayed

  @BrainAddNewAlbumWithPhoto
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

  @BrianSearchHisAlbum
  Scenario: Brian Search His Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Album"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user see a element "NewAlbum" is displayed on detail

  @BrianReactionOnAlbum
  Scenario: Brian Reaction On Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see title "All Albums" is displayed
    And the user clicks on div "itemMedia" and process
    And the user clicks on button "reactionButton"
    Then the user see result of "reactionResult" displayed

  @BrianEditAlbum
  Scenario: Brian Edit On Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Album"
    And the user opens action menu
    When the user clicks on "Edit Photo Album"
    And the user clicks on input field "name" with value "Auto Test New AlbumName"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrianDeleteAlbum
  Scenario: Brian Delete Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Auto Test New AlbumName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user opens action menu
    When the user clicks on "Delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrainAddNewEmptyAlbum
  Scenario: Brian Add Empty Album
    Given the user logged in as "brian"
    When the browser opened at item "photo" and tab "/photo/album/add"
    And the user clicks on input field "name" with value "IsEmptyAlbum"
    And the user add value "TestAtoDescription" on textArea "inputText"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user see title "IsEmptyAlbum" is displayed
    And the user see "This album has no photos/videos uploaded" is displayed on user profile

  @BrianSearchEmptyAlbum
  Scenario: Brian Search Empty Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my-albums"
    Then the user see title "itemTitle" with value "IsEmptyAlbum"

  @BrianAddPhotoToEmptyAlbum
  Scenario: Brian Add Photo To Empty Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user add value on "select-album" is "IsEmptyAlbum"
    And the user want upload 1 photo
    And the user adds category "Comedy"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the browser opened at item "photo" and tab "/photo/albums"
    Then the user see title "itemTitle" with value "IsEmptyAlbum"

  @BrianDeleteEmptyAlbum
  Scenario: Brian Delete Empty Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "IsEmptyAlbum"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user opens action menu
    When the user clicks on "Delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message