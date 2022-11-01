@events @brianActionOnPublicEventsIsFriends

Feature: Brain Process On Public Events Is Friends


  @BrianAddNewEventsIsFriendWithEmptyValue
  Scenario: Brian Add New Events Is Friend With Empty Value
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user clicks on input field "name" with value "Groups"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "The location field is required for offline event."


  @BrianAddNewEventsOfflineIsFriends
  Scenario: Brian Add New Events Offline Is Friends
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user clicks on input field "name" with value "IsOfflineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to add new date is "29"
    When the user want to scroll to the end of page
    Then the user clicks on input field "fieldLocation" with value "Ho Chi Minh City"
    And the user clicks on the "tooltip" on screen
    And the user sees item of "Everyone"
    When the user sees item of "Friends"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "IsOfflineEvents"


  @AnotherUserSearchOfflineEventsIsFriends
  Scenario: Another User Search OfflineEvents Is Friends
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user want to click on title "itemTitle" and process
    Then the user sees text "IsOfflineEvents"


  @AnotherUserSearchEventsIsNotFriend
  Scenario: Another User Search Events is not friend
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    Then the user sees text "No events found "


  @BrianShareNowOnEventsIsFriendJustAdd
  Scenario: Brain Share Now On Events Is Friend Just Add
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    Then the user sees text "shared a post to newsfeed "
    Then the user sees h4 "IsOfflineEvents"


  @AnotherUserAccessOnBrianProfileAndSeeEvents
  Scenario: Another user access Brian profile and see Events
    Given the user logged in as "test"
    Then the user searches with text "brian"
    And the user want to click on "/brian"
    Then the user sees text "shared a post to newsfeed "


  @BrainDeleteOfflineEventsIsFriends
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