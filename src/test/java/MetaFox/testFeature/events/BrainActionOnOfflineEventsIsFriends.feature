@MetaFox @events @brianActionOnPublicEventsIsFriends

Feature:  Brain Process On Public Events Is Friends

  @BrianAddNewEventsIsFriendWithEmptyValue
  Scenario: Brian Add New Events Is Friend With Empty Value
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "name" with value "Groups"
    And the user click on button "buttonSubmit"
    Then the user see "The location field is required for offline event." displayed success

  @BrianAddNewEventsOfflineIsFriends
  Scenario: Brian Add New Events Offline Is Friends
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user action on input field "name" with value "IsOfflineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to add new date is "29"
    When the user want to scroll to the end of page
    Then the user action on input field "fieldLocation" with value "Ho Chi Minh City"
    And the user click on the "tooltip" on screen
    And the user see item of "Everyone"
    When the user see item of "Friends"
    And the user click on button "buttonSubmit"
    Then the user see message "Event created successfully" displayed
    Then the user see title "IsOfflineEvents" is displayed

  @AnotherUserSearchOfflineEventsIsFriends
  Scenario: Another User Search OfflineEvents Is Friends
    Given the user logged in as "test"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsOfflineEvents" is displayed

  @AnotherUserSearchEventsIsNotFriend
  Scenario: Another User Search Events is not friend
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    Then the user see "No events found" on left menu

  @BrianShareNowOnEventsIsFriendJustAdd
  Scenario: Brain Share Now On Events Is Friend Just Add
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user action on "Share now"
    Then the user see message "Shared successfully" displayed
    And the user back to "linkLogo" page
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see h4 "IsOfflineEvents" is displayed

  @AnotherUserAccessOnBrianProfileAndSeeEvents
  Scenario: Another user access Brian profile and see Events
    Given the user logged in as "test"
    Then the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "shared a post to newsfeed" on left menu

  @BrainDeleteOfflineEventsIsFriends
  Scenario: Brain delete offline events is friends
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "delete" and process
    Then the user see "Are you sure you want to permanently delete this event?" displayed success
    And the user click on button "buttonSubmit"
    Then the user see message "Event successfully deleted." displayed