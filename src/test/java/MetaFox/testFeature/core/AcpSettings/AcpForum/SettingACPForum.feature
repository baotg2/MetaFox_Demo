@MetaFox  @configOnACP @configOnACPForums
Feature: Config Settings On ACP Forums

  @AdminConfigForumsOnACP
  Scenario: Admin Config Forums OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Forum"
    When the user want to scroll to the end of page
    And the user action on input field "forum.minimum_name_length" with value "5"
    And the user action on input field "forum.maximum_name_length" with value "255"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingsForumsOnACP
  Scenario: Brian Verify Settings Forums On ACP
    Given the user logged in as "brian"
    When the user action on "More"
    And the browser opened at item "forum" and tab "/forum/thread/add"
    And the user action on input field "inputTitle" with value "a"
    And the user click on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user see "Title must contain at least 5 characters." displayed success