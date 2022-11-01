@events @brianActionOnPublicEvents

Feature:  Brain Process On Public Events

  @BrianAddNewEventsWithEmptyValue
  Scenario: Brian Add New Events With Empty Value
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user clicks on input field "name" with value "Groups"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "The location field is required for offline event."

  @BrianAddNewEventsOffline
  Scenario: Brian Add New Events EventsOffline
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "event" and tab "/event/add"
    And the user clicks on input field "name" with value "IsOfflineEvents"
    And the user add value on "select-categories" is "Music"
    And the user want to add new date is "29"
    When the user want to scroll to the end of page
    Then the user clicks on input field "fieldLocation" with value "Ho Chi Minh City"
    And the user clicks on the "tooltip" on screen
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "IsOfflineEvents"

  @BrianReactionOnEventJustAdd
  Scenario: Brain Reaction On This Event
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "reactionButton"

  @BrainSeePostCreateOnFeed
  Scenario: Brain See Post Create on Feed
    Given the user logged in as "brian"
    When the user want to access "userAvatar"
    Then the user sees text "added an event "
    Then the user sees text "1 person going"
    And the user sees h4 "IsOfflineEvents"

  @BrainSeeOnGoingOnEventJustCreated
  Scenario: Brain See OnGoing On EventsOffline
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user sees text "Your event"

  @BrainVerifyMyHostingEvent
  Scenario: Brain Verify my hosting events
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab "/event/hosted"
    When the user want to click on list button label "ONGOING" and process
    Then the user sees text "itemTitle" with value "IsOfflineEvents"
    Then the user sees text "Your event"

  @BrainVerifyNumberOfGuestsJoinedEvents
  Scenario: Brain Verify Number of guests joined events
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    Then the user sees text "IsOfflineEvents"
    Then the user sees text "Your event"

  @BrianVerifyHostListOnEvents
  Scenario: Brain Verify HostList On Events
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    Then the user sees text "IsOfflineEvents"
    And the user want to "All Hosts"
    And the user want to "Host List"
    Then the user sees text "Brian" on invited tab

  @BrianVerifyGuestListOnPublicEvent
  Scenario: Brain Verify GuestList On Events
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    Then the user sees text "IsOfflineEvents"
    And the user want to "View list"
    And the user want to "Going"
    Then the user sees text "Brian" on invited tab
    And the user want to "Invited"
    Then the user sees text "No Content" on tab

  @BrainVerifyManageTab
  Scenario: Brain Verify Manage Tab
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    When the user want to click on list button label "MANAGE" and process
    Then the user sees text "Event Settings"

  @BrainAddNewHost
  Scenario: Brain Add New Hosts
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "actionMenu" and process
    And the user clicks on div "Edit Event" and process
    And the user add value on "host" is "test"
    When the user want to select category at 1 on dropdown list "host"
    And the user clicks on button "buttonSubmit"
    And the user want to "All Hosts"
    And the user want to "Invited"
    Then the user sees text "test" on invited tab
    And the user sees button "Cancel Invite"
    When the user clicks on button "buttonClose"
    And I want to click on "Logout"
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab "/event/friend"
    And the user clicks on the item title
    And the user "Accept" on invite
    Then the user sees successful flash message
    And the user want to refresh page before handle the action
    And the user want to "All Hosts"
    And the user want to "Invited"
    Then the user sees text "test" on invited tab
    When the user clicks on button "buttonClose"
    And the user want to click on list button label "EVENT INFO" and process
    And the user want to click on list button label "DISCUSSIONS" and process
    Then the user want to click on list button label "MANAGE" and process
    And the user want to click on list button label "PENDING POSTS" and process

  @BrianRemoveHost
  Scenario: Brain Remove Hosts
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on div "Edit Event" and process
    And the user add value on "host" is ""
    Then the user want to click on list button label "Clear" and process
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user clicks on the item title
    Then the user sees text "Going"

  @BrainInviteAnotherUserJoinEvent
  Scenario: Brain Invite Another User Join Event
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    When the user clicks on "Invite"
    And the user clicks on div "Invite People To Come" and process
    Then the user "itemUndefined" this item
    And the user clicks on button "buttonDone"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Given the user logged in as "admin"
    When the user "new_notification" this item
    Then the user clicks on notification "Brian invited you to the event IsOfflineEvents" and process
    Then the user sees button "Not Interested" is default
    When the user want to click on button label "Not Interested" and process
    And the user access this blog by "Going" and process
    Then the user sees successful flash message
    And the user want to "View list"
    And the user want to "Going"
    Then the user sees text "admin" on invited tab

  @BrianShareNowEvents
  Scenario: Brain Share Now On Event Just Add
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

  @BrianShareOnFeedEvents
  Scenario: Brian Share On Feed Events
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share to News Feed"
    And the user want to "Share"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    Then the user sees text "shared a post to newsfeed "
    Then the user sees h4 "IsOfflineEvents"

  @BrianShareEventsOnFriendProfile
  Scenario: Brian Share On Events On Friend Profile
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user "share_on_friends" this item
    Then the user "itemUndefined" this item
    And the user clicks on button "submit"
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees h4 "IsOfflineEvents"