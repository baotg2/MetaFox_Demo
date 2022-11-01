@photo @photoOnlyMeFunction_Brain
Feature: Brian process on photos only me item

  @BrainAddNewPhotoOnlyMe
  Scenario: Brian Add New Photo Only Me
    Given the user logged in as "brian"
    Then the browser opened at item "photo" and tab "/photo/all"
    And the user verify "itemPhoto" before upload
    And the user back to "linkLogo" page
    Then the browser opened at item "photo" and tab "/photo/add"
    And the user want upload 1 photo
    And the user adds category "Comedy"
    And the user see item of "Everyone"
    When the user see item of "Only Me"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify "itemPhoto" after upload

  @BrianShareNowOnPhotoOnlyMeJustAdd
  Scenario: Brain Share Now On Photo OnlyMe Just Add
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "photo" and tab "/photo/my"
    And the user see item of "Brian"
    Then the user verify button test data id "menuShareButton" is displayed