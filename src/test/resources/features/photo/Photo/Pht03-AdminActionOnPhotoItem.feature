@app_photo @photo @admin
Feature: Admin process on photos item

  Scenario: AdminSeePendingPhoto
    Given the user logged in as "admin"
    And the browser opened at "/photo/pending"
    And within the content
    Then the user sees text "Pending Photos"

  Scenario: Admin Add New Album With Photo
    Given the user logged in as "admin"
    And the browser opened at "/photo/my-albums"
    And within the content
    And the user verify "itemMedia" before upload
    And the user back to "linkLogo" page
    Then the browser opened at "/photo/add"
    And the user want upload 1 photo
    And the user want to add new album
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    And the user back to "linkLogo" page
    Then the browser opened at "/photo/my-albums"
    Then the user verify "itemMedia" after upload

  Scenario: Admin Add New Photo
    Given the user logged in as "admin"
    And the browser opened at "/photo/my"
    And within the content
    And the user verify "itemPhoto" before upload
    When the browser opened at "/photo/add"
    And the user want upload 1 photo
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify "itemPhoto" after upload
