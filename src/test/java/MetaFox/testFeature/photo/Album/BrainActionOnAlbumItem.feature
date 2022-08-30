@MetaFox @photo  @albumFunction_Brain
Feature: Brian process on album item

  @BrianAddNewAlbumWithoutImage
  Scenario: Brian Add New Album Without Image
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want to add new album
    And the user click on button "buttonSubmit"
    Then the user see message "Media files are required." displayed

  @BrainAddNewAlbumWithPhoto
  Scenario: Brian Add New Album With Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user verify "itemMedia" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 2 photo
    And the user want to add new album
    And the user click on button "buttonSubmit"
    And the user see message "Media item successfully uploaded." displayed
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
    And the user click on div "itemMedia" and process
    And the user click on button "reactionButton"
    Then the user see result of "reactionResult" displayed

  @BrianEditAlbum
  Scenario: Brian Edit On Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Album"
    And the user click on "actionMenuButton" to access blog
    Then the user "Edit Photo Album" this item
    And the user action on input field "inputName" with value "Auto Test New AlbumName"
    And the user click on button "buttonSubmit"
    Then the user see message "Photo album updated successfully." displayed

  @BrianDeleteAlbum
  Scenario: Brian Delete Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Auto Test New AlbumName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    Then the user "Delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Photo album deleted successfully." displayed

  @BrainAddNewEmptyAlbum
  Scenario: Brian Add Empty Album
    Given the user logged in as "brian"
    When the browser opened at item "photo" and tab "/photo/album/add"
    Then the user see title "Create New Album" is displayed
    And the user action on input field "inputName" with value "IsEmptyAlbum"
    And the user add value "TestAtoDescription" on textArea "inputText"
    When the user click on button "buttonSubmit"
    Then the user see message "Photo Album created successfully" displayed
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
    Then the browser opened at item "photo" and tab "/photo/my-albums"
    Then the user see title "itemTitle" with value "IsEmptyAlbum"
    When the user click on element link text a "IsEmptyAlbum"
    And the user want to "Add Photos/Videos"
    When the user want to "Select Files"
    And the user upload media
    When the user click on button "buttonSubmit"
    Then the user see message "This album has no photos/videos uploaded" displayed
    And the user want to refresh page before handle the action
    When the browser opened at item "/photo/albums" and tab ""
    Then the user see title "itemTitle" with value "IsEmptyAlbum"

  @BrianDeleteEmptyAlbum
  Scenario: Brian Delete Empty Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "IsEmptyAlbum"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    Then the user "Delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Photo album deleted successfully." displayed