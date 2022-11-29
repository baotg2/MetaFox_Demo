@app_photo @photo @admin @wip
Feature: Admin process on photos item

  @AdminSeePendingPhoto
  Scenario: AdminSeePendingPhoto
    Given the user logged in as "admin"
    Then the browser opened at item "photo" and tab "/photo/pending"
    And the user sees text "Pending Photos"
    And the user back to "linkLogo" page

  @AdminAddNewAlbumWithPhoto
  Scenario: Admin Add New Album With Photo
    Given the user logged in as "admin"
    Then the browser opened at item "photo" and tab "/photo/my-albums"
    And the user verify "itemMedia" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 1 photo
    And the user want to add new album
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/my-albums"
    Then the user verify "itemMedia" after upload

  @AdminAddNewPhoto
  Scenario: Admin Add New Photo
    Given the user logged in as "admin"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 1 photo
    And the user adds category "Comedy"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify "itemPhoto" after upload
