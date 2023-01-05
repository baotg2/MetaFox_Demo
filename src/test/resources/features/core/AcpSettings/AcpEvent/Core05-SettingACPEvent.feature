@admincp @eventSetting
Feature: Config Settings On ACP Events

  Scenario: Admin Config Events OnACP
    Given the user logged in as "admin"
    When the browser opened at "/admincp/event/setting"
    And the user want to scroll to the end of page
    And within the content
    When the user clicks on input field "event.minimum_name_length" with value "5"
    And the user clicks on input field "event.maximum_name_length" with value "255"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian Verify Settings Events On ACP
    Given the user logged in as "brian1"
    And the browser opened at "/event/add"
    And within the content
    When the user clicks on input field "name" with value "a"
    And the user clicks on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user sees text "Event Name must be at least 5 characters"