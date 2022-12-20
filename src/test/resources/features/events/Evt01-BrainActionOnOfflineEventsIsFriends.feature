@app_event @brian
Feature: Brain Process On Public Events Is Friends

  Scenario: Brian Add New Events Is Friend With Empty Value
    Given the user logged in as "brian"
    And the browser opened at "/event/add"
    And within the content
    When the user add on "inputName" with value "IsOfflineEvents"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Location is a required field."

  Scenario: Brian Add New Events Offline Is Friends
    Given the user logged in as "brian"
    And the browser opened at "/event/add"
    And within the content
    When the user add on "inputName" with value "IsOfflineEvents"
    And the user want to add new date is "29"
    When the user want to scroll to the end of page
    And the user add on "fieldLocation" with value "Ho Chi Minh City"
    And the user select location
    And the user set privacy is Friends
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees page url matches "/event/\d+"

  Scenario: Another User Search OfflineEvents Is Friends
    Given the user logged in as "brian"
    When the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    Given within the content
    And the user clicks on the item title
    Then the user sees text "IsOfflineEvents"

  Scenario: Another User Search Events is not friend
    Given the user logged in as "terry"
    When the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    Given within the content
    Then the user sees text "No events found"

  Scenario: Brain delete offline events is friends
    Given the user logged in as "brian"
    And the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    And the user turn off setting "inputIsOnline"
    Given within the content
    And the user opens action menu
    And  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message