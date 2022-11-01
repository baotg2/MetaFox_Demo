@MetaFox  @configOnACP @configOnACPGroups
Feature: Config Settings On ACP Groups

  @AdminConfigGroupsOnACP
  Scenario: Admin Config Groups OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Group"
    When the user want to scroll to the end of page
    And the user clicks on input field "group.minimum_name_length" with value "5"
    And the user clicks on input field "group.maximum_name_length" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrianVerifySettingsGroupsOnACP
  Scenario: Brian Verify Settings Groups On ACP
    Given the user logged in as "brian"
    When the user clicks on "More"
    And the browser opened at item "group" and tab "/group/add"
    And the user clicks on input field "name" with value "a"
    And the user clicks on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user see "Group Name must be at least 5 characters" displayed success