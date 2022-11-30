@app_photo @album_friend @brian @previewSite
Feature: Brian process on album item friends

  Scenario: Brian Add New Album Friend With Photo
    Given the user logged in as "brian"
    And the browser opened at "/photo/add"
    And within the content
    When the user want upload 2 photo
    And the user want to add new album
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    Then the browser opened at "/photo/my-albums"

  Scenario: Brian Changes Privacy Album
    Given the user logged in as "brian"
    When the browser opened at "/photo/albums"
    And within the sidebar
    And the user searches with text "NewAlbum"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    And the user clicks on menu item "edit"
    And the user set privacy is Friends
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Another User Search Album Is Friend
    Given the user logged in as "terry"
    And the browser opened at "/photo/albums"
    And within the sidebar
    When the user searches with text "NewAlbum"
    Given within the content
    And the user clicks on the item title
    Then the user sees text "NewAlbum"

  Scenario: Another User Search Album is not friend
    Given the user logged in as "luna"
    And the browser opened at "/photo/albums"
    And within the sidebar
    When the user searches with text "NewAlbum"
    Given within the content
    Then the user sees text "No albums are found."

  Scenario: Brian Delete Album Is Friend
    Given the user logged in as "brian"
    When the browser opened at "/photo/albums"
    And within the sidebar
    And the user searches with text "NewAlbum"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    When  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message