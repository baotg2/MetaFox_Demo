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
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user clicks on the item title
    Then the user sees text "IsOfflineEvents"

  Scenario: Another User Search Events is not friend
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    Then the user sees text "No events found "

  Scenario: Brain Share Now On Events Is Friend Just Add
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    Then the user sees text "shared a post to newsfeed "
    Then the user sees h4 "IsOfflineEvents"

  Scenario: Another user access Brian profile and see Events
    Given the user logged in as "test"
    Then the user searches with text "brian"
    And the user clicks on link "/brian"
    Then the user sees text "shared a post to newsfeed "

  Scenario: Brain delete offline events is friends
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "actionMenu" and process
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to permanently delete this event?"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message