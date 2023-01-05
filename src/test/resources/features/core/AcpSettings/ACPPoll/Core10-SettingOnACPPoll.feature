@admincp @pollSetting
Feature: Config Settings On ACP Poll

  Scenario: Admin Config Poll OnACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/poll/setting"
    And within the content
    When the user want to scroll to the end of page
    And the user clicks on input field "poll.minimum_name_length" with value "5"
    And the user clicks on input field "poll.maximum_name_length" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Verify Settings Poll On ACP
    Given the user logged in as "brian1"
    And the browser opened at "/poll/add"
    And within the content
    When the user clicks on input field "question" with value "a"
    And the user clicks on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user sees text "Title must contain at least 5 characters."

  Scenario: Admin Config Settings Is Image Required
    Given the user logged in as "admin"
    And the browser opened at "/admincp/poll/setting"
    And within the content
    When the user turn off setting "inputPollIsImageRequired"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Verify Settings Poll image required
    Given the user logged in as "admin"
    And the browser opened at "/poll/add"
    And within the content
    When the user clicks on input field "question" with value "Polls"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user clicks on button "buttonSubmit"

  Scenario: Admin Reset Settings Is Image Required
    Given the user logged in as "admin"
    And the browser opened at "/admincp/poll/setting"
    And within the content
    When the user turn off setting "inputPollIsImageRequired"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message