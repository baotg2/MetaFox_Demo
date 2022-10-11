@MetaFox @events @brianActionOnOnlineEvents

Feature:  Brain Process On Online Events

  @BrianAddNewEventsOnlineWithEmptyValue
  Scenario: Brian Add New Events Events Online With empty value
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "name" with value "IsOfflineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to access "inputIsOnline"
    And the user click on button "buttonSubmit"
    Then the user see "Online Link is a required field." displayed success

  @BrianAddNewEventsOnline
  Scenario: Brian Add New Events Events Online With empty value
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "name" with value "IsOnlineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to access "inputIsOnline"
    When the user action on input field "event_url" with value "URLEvent"
    And the user click on button "buttonSubmit"
    Then the user see message "Event created successfully" displayed
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
    When the user want to click on button label "actionMenu" and process
    And the user click on div "Delete" and process
    Then the user see "Are you sure you want to permanently delete this event?" displayed success
    And the user click on button "buttonSubmit"
    Then the user see message "Event successfully deleted." displayed