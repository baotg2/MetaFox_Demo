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
    Then the browser opened at item "photo" and tab "/photo/my-albums"
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
    Then the user not see "No Results Found" is displayed on result table

  @BrianReactionOnAlbum
  Scenario: Brian Reaction On Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see title "All Albums" is displayed
    And the user click on div "itemMedia" and process
    And the user click on button "reactionButton"
    Then the user see result of "reactionResult" displayed

  @BrianEditAlbum
  Scenario: Brian Reaction On Album
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Album"
    And the user click on "actionMenuButton" to access blog
    Then the user "Edit" this item
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
    And the user not see "No Results Found" is displayed on result table
    And the user click on "actionMenuButton" to access blog
    Then the user "Delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Photo album deleted successfully." displayed