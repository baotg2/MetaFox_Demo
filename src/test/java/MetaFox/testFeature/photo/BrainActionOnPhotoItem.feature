@MetaFox @photo @photoFunction_Brain
Feature: Brian process on photos item

  @BrainAddNewPhoto
  Scenario: Brian Add New Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 1 photo
    And the user want add categories is "Comedy"
    And the user click on button "buttonSubmit"
    And the user see message "Media item successfully uploaded." displayed
    Then the user verify "itemPhoto" after upload

  @BrianReactionOnPhoto
  Scenario: Brian Reaction On Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user click on div "itemPhoto" and process
    And the user click on button "reactionButton"
    Then the user see result of "reactionResult" displayed

  @BrianDeletePhoto
  Scenario: Brian Delete Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user click on "actionMenuButton" to access blog
    Then the user "Delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Photo deleted successfully" displayed

  @BrianReportPhoto
  Scenario: Brian Report Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user see title "All Photos" is displayed
    And the user see item of "admin"
    And the user click on button "actionMenuButton" to action
    And the user "Report" this item
    Then the user see main form "form" is displayed

  @BrianAttachPhotoFromFeed
  Scenario: Brian Attach Photo From Feed
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    And the user want upload 1 photo
    Then the user click on button "submit"
    Then the browser opened at item "photo" and tab "/photo/my"
    Then the user verify "itemPhoto" after upload

  @BrianAttachPhotoFromUserProfile
  Scenario: Brian Attach Photo From User Profile
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    Then the user want to access "userAvatar"
    And the user want upload 1 photo
    Then the user click on button "submit"
    Then the browser opened at item "photo" and tab "/photo/my"
    Then the user verify "itemPhoto" after upload