@app_event @brian
Feature:  Brain Process On Online Events

  Scenario: Brian Add New Events Events Online With empty value
    Given the user logged in as "brian"
    And the browser opened at "/event/add"
    And within the content
    When the user add on "inputName" with value "IsOnlineEvents"
    And the user turn off setting "inputIsOnline"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Online Link is required."

  Scenario: Brian Add New Events Events Online
    Given the user logged in as "brian"
    And the browser opened at "/event/add"
    And within the content
    When the user add on "inputName" with value "IsOnlineEvents"
    And the user turn off setting "inputIsOnline"
    When the user add on "inputEventUrl" with value "https://zoom.us/"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees page url matches "/event/\d+"

  Scenario: Brian Open Link Online Events
    Given the user logged in as "brian"
    And the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOnlineEvents"
    When within the content
    Then the user sees text "Your event"
    And the user clicks on the item title
    Then the user sees text "IsOnlineEvents"
    When the user clicks on element link text a "https://zoom.us/"
    Then the user want to verify tab "https://zoom.us/" open successfully

  Scenario: Brain delete online events
    Given the user logged in as "brian"
    And the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOnlineEvents"
    Given within the content
    And the user opens action menu
    And  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message