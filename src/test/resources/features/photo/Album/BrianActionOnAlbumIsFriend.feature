@MetaFox @photo  @albumFriendFunction_Brain
Feature: Brian process on album item friends

  @BrainAddNewAlbumFriendWithPhoto
  Scenario: Brian Add New Album Friend With Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user verify "itemMedia" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 2 photo
    And the user want to add new album
    And the user see item of "Everyone"
    When the user see item of "Friends"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/my-albums"
    Then the user verify "itemMedia" after upload

  @AnotherUserSearchAlbumIsFriend
  Scenario: Another User Search Album Is Friend
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Album"
    And the user want to click on title "itemTitle" and process
    Then the user see title "NewAlbum" is displayed

  @AnotherUserSearchAlbumsIsNotFriend
  Scenario: Another User Search Album is not friend
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Album"
    Then the user see "No albums found" on left menu

  @BrianShareNowOnAlbumFriendJustAdd
  Scenario: Brain Share Now On Album Friend Just Add
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Album"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see a element "NewAlbum" is displayed on detail

  @AnotherUserAccessOnBrianProfileAndSeeAlbum
  Scenario: Another user access Brian profile and see Album
    Given the user logged in as "test"
    Then the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "shared a post to newsfeed" on left menu

  @BrianDeleteAlbumIsFriend
  Scenario: Brian Delete Album Is Friend
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user see search field "Search albums" and typing keys "Album"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user opens action menu
    When the user clicks on "Delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message