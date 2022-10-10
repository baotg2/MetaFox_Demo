@MetaFox  @configOnACP @configOnACPEvents
Feature: Config Settings On ACP Events

  @AdminConfigEventsOnACP
  Scenario: Admin Config Events OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Event"
    When the user want to scroll to the end of page
    And the user action on input field "event.minimum_name_length" with value "5"
    And the user action on input field "event.maximum_name_length" with value "255"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrianVerifySettingsEventsOnACP
  Scenario: Brian Verify Settings Events On ACP
    Given the user logged in as "brian"
    When the user action on "More"
    And the browser opened at item "event" and tab "/event/add"
    And the user action on input field "name" with value "a"
    And the user click on button "buttonSubmit"
    When the user want to scroll to the up of page
    Then the user see "Event Name must contain at least 5 characters." displayed success