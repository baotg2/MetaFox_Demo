@pHpV5 @photoFunction_Brain
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

  @BrianEditPhoto
  Scenario: Brian Edit Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user click on "actionMenuButton" to access blog
    And the user "edit" this item
    And the user action on input field "inputTitle" with value "newPhotoName"
    And the user click on button "buttonSubmit"
    Then the user see message "Photo item successfully updated." displayed

  @BrianDeletePhoto
  Scenario: Brian Delete Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab ""
    And the user see search field "Search photos" and typing keys "newPhotoName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    Then the user "delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Photo deleted successfully" displayed

  @BrianReportPhoto
  Scenario: Brian Report Photo
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user see title "All Photos" is displayed
    And the user see photo of "test"
    And the user click on button "actionMenuButton" to action
    And the user "report" this item
    Then the user see main form "form" is displayed
    