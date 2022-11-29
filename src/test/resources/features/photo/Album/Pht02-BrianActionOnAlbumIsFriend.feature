@app_photo @album_friend @brian @wip
Feature: Brian process on album item friends

  Scenario: Brian Add New Album Friend With Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user verify "itemMedia" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 2 photo
    And the user want to add new album
    And the user sees item of "Everyone"
    When the user sees item of "Friends"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/my-albums"
    Then the user verify "itemMedia" after upload

  Scenario: Another User Search Album Is Friend
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user searches with text "Album"
    And the user clicks on the item title
    Then the user sees text "NewAlbum"

  Scenario: Another User Search Album is not friend
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user searches with text "Album"
    Then the user sees text "No albums found "

  Scenario: Brain Share Now On Album Friend Just Add
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user searches with text "Album"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees text "shared a post to newsfeed "
    Then the user sees text "NewAlbum"

  Scenario: Another user access Brian profile and see Album
    Given the user logged in as "test"
    Then the user searches with text "brian"
    And the user clicks on link "/brian"
    Then the user sees text "shared a post to newsfeed "

  Scenario: Brian Delete Album Is Friend
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/albums"
    And the user searches with text "Album"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user opens action menu
    When  the user clicks on menu item "delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message