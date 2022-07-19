@MetaFox @core @brianVerifyOnUI
Feature: Brain Verify on the UI

  @BrainSeeAllAppByMoreButton
  Scenario: Brian See All App By More Button
    Given the user logged in as "brian"
    When the user "more_menu" this item
    Then the user see "Forum" on left menu
    Then the user see "Friends" on left menu
    Then the user see "Members" on left menu
    Then the user see "Blogs" on left menu
    Then the user see "Videos" on left menu
    Then the user see img "/logo.png" is displayed

  @BrianChangeToDarkMode
  Scenario: Brian Change to dark mode
    Given the user logged in as "brian"
    And I want to click on "Dark Mode"
    When the user see item of "On"
    Then the user see img "/logo-dark.png" is displayed
    And the user want to refresh page before handle the action
    And I want to click on "Dark Mode"
    When the user see item of "Off"
    Then the user see img "/logo.png" is displayed
    When the user see item of "Auto"
    Then the user see img "/logo.png" is displayed