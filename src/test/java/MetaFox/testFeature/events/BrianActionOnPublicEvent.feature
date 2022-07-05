@MetaFox @events @brianActionOnPublicEvents
Feature:  Brain Process On Public Events

  @BrianAddNewEventsWithEmptyValue
  Scenario: Brian Add New Events With Empty Value
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "inputName" with value "Groups"
    And the user click on button "buttonSubmit"
    Then the user see "The location field is required for offline event." displayed success

  @BrianAddNewEventsOffline
  Scenario: Brian Add New Events EventsOffline
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "inputName" with value "IsOfflineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to add new date is "12082022"
    Then the user action on input field "fieldLocation" with value "Ho Chi Minh City"
    And the user click on the "tooltip" on screen
    And the user click on button "buttonSubmit"
    Then the user see title "IsOfflineEvents" is displayed

  @BrainSeeOnGoingOnEventJustCreated
  Scenario: Brain See OnGoing On EventsOffline
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user see "Ongoing" on left menu

  @BrainVerifyNumberOfGuestsJoinedEvents
  Scenario: Brain Verify Number of guests joined events
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsOfflineEvents" is displayed

