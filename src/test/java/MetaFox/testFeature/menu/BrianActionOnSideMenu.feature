@MetaFox  @sideMenu
Feature: Verify access side menu success
  @ScenarioAccessSideMenu1
  Scenario: verify access child side menu
    Given the user logged in as "brian"
    And I want to access "blogs"
    And I want to access "photos"
    And I want to access "poll"
    And I want to access "members"
    And I want to access "quiz"
    And I want to access "event"