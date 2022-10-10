@MetaFox  @configOnACP @configOnACPGroups
Feature: Config Settings On ACP Groups

  @AdminConfigGroupsOnACP
  Scenario: Admin Config Groups OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Group"
    When the user want to scroll to the end of page
    And the user action on input field "group.minimum_name_length" with value "5"
    And the user action on input field "group.maximum_name_length" with value "255"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingsGroupsOnACP
  Scenario: Brian Verify Settings Groups On ACP
    Given the user logged in as "brian"
    When the user action on "More"
    And the browser opened at item "group" and tab "/group/add"
    And the user action on input field "name" with value "a"
    And the user click on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user see "Group Name must be at least 5 characters" displayed success