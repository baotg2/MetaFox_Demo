 @events @brianActionOnOnlineEvents

Feature:  Brain Process On Online Events

  @BrianAddNewEventsOnlineWithEmptyValue
  Scenario: Brian Add New Events Events Online With empty value
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user clicks on input field "name" with value "IsOfflineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to access "inputIsOnline"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Online Link is required."

  @BrianAddNewEventsOnline
  Scenario: Brian Add New Events Events Online
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user clicks on input field "name" with value "IsOnlineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to access "inputIsOnline"
    When the user clicks on input field "event_url" with value "URLEvent"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "IsOnlineEvents"
    Then the user sees text "https://zoom.us/"

  @BrianOpenLinkOnlineEvents
  Scenario: Brian Open Link Online Events
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOnlineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user sees text "Your event"
    And the user want to click on title "itemTitle" and process
    Then the user sees text "IsOnlineEvents"
    When the user clicks on element link text a "https://zoom.us/"
    Then the user want to verify tab "https://zoom.us/" open successfully

  @BrainDeleteOnlineEvents
  Scenario: Brain delete online events
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOnlineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "Action Menu" and process
    And  the user clicks on menu item "delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message