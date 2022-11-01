@MetaFox  @configOnACP @configOnACPForums
Feature: Config Settings On ACP Forums

  @AdminConfigForumsOnACP
  Scenario: Admin Config Forums OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Forum"
    When the user want to scroll to the end of page
    And the user clicks on input field "forum.minimum_name_length" with value "5"
    And the user clicks on input field "forum.maximum_name_length" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrianVerifySettingsForumsOnACP
  Scenario: Brian Verify Settings Forums On ACP
    Given the user logged in as "brian"
    When the user clicks on "More"
    And the browser opened at item "forum" and tab "/forum/thread/add"
    And the user add value on id "select-forum_id" is "General"
    And the user clicks on input field "title" with value "a"
    And the user clicks on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user sees text "Title must contain at least 5 characters." displayed success