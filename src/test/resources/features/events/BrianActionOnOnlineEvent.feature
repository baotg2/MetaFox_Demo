 @events @brianActionOnOnlineEvents

Feature:  Brain Process On Online Events

  @BrianAddNewEventsOnlineWithEmptyValue
  Scenario: Brian Add New Events Events Online With empty value
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "name" with value "IsOfflineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to access "inputIsOnline"
    And the user clicks on button "buttonSubmit"
    Then the user see "Online Link is required." displayed success

  @BrianAddNewEventsOnline
  Scenario: Brian Add New Events Events Online
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "name" with value "IsOnlineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to access "inputIsOnline"
    When the user action on input field "event_url" with value "URLEvent"
    And the user clicks on button "buttonSubmit"
    Then the user sees flash message "Event created successfully" displayed
    Then the user see title "IsOnlineEvents" is displayed
    Then the user see a element "https://zoom.us/" is displayed on detail

  @BrianOpenLinkOnlineEvents
  Scenario: Brian Open Link Online Events
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOnlineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user see "Your event" displayed success
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsOnlineEvents" is displayed
    When the user click on element link text a "https://zoom.us/"
    Then the user want to verify tab "https://zoom.us/" open successfully

  @BrainDeleteOnlineEvents
  Scenario: Brain delete online events
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOnlineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "Action Menu" and process
    And the user action on "Delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees flash message "Event successfully deleted." displayed