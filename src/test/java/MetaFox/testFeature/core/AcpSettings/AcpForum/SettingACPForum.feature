@MetaFox  @configOnACP @configOnACPForums
Feature: Config Settings On ACP Forums

  @AdminConfigForumsOnACP
  Scenario: Admin Config Events OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Forum"
    When the user want to scroll to the end of page
    And the user action on input field "inputMinimumNameLength" with value "5"
    And the user action on input field "inputMaximumNameLength" with value "255"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingsForumsOnACP
  Scenario: Brian Verify Settings Events On ACP
    Given the user logged in as "brian"
    When the user action on "More"
    And the browser opened at item "forum" and tab "/forum/thread/add"
    And the user action on input field "inputName" with value "a"
    And the user click on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user see "Title must be between 5 and 255 characters." displayed success