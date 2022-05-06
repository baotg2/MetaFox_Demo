@pHpV5 @PhotoItem_Admin
Feature: Admin process on photos item

  @AdminSeePendingPhoto
  Scenario: AdminSeePendingPhoto
    Given the user logged in as "admin"
    Then the browser opened at item "photo" and tab "/photo/pending"
    And the user see title "Pending Photos" is displayed
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
    And the user click on button "buttonSubmit"
    And the user see message "Media item successfully uploaded." displayed
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
    And the user want add categories is "Comedy"
    And the user click on button "buttonSubmit"
    And the user see message "Media item successfully uploaded." displayed
    Then the user verify "itemPhoto" after upload
