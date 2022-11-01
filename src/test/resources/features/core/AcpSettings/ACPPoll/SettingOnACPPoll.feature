@MetaFox  @configOnACP @configOnACPPoll
Feature: Config Settings On ACP Poll

  @AdminConfigPollOnACP
  Scenario: Admin Config Poll OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Poll"
    When the user want to scroll to the end of page
    And the user clicks on input field "poll.minimum_name_length" with value "5"
    And the user clicks on input field "poll.maximum_name_length" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrianVerifySettingsPollOnACP
  Scenario: Brian Verify Settings Poll On ACP
    Given the user logged in as "brian"
    When the user clicks on "More"
    And the browser opened at item "poll" and tab "/poll/add"
    And the user clicks on input field "question" with value "a"
    And the user clicks on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user sees text "Title must contain at least 5 characters." displayed success

  @AdminSettingsIsImageRequired
  Scenario: Admin Config Settings Is Image Required
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Poll"
    When the user want to access "inputPollIsImageRequired"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminVerifySettingPollImageRequired
  Scenario: Admin Verify Settings Poll image required
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "poll" and tab "/poll/add"
    And the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user clicks on button "buttonSubmit"

  @AdminResetSettingsIsImageRequired
  Scenario: Admin Reset Settings Is Image Required
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Poll"
    When the user want to access "inputPollIsImageRequired"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message