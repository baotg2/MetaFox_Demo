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
    And the user want to add new date is "29"
    When the user want to scroll to the end of page
    Then the user action on input field "fieldLocation" with value "Ho Chi Minh City"
    And the user click on the "tooltip" on screen
    And the user click on button "buttonSubmit"
    Then the user see message "Event created successfully" displayed
    Then the user see title "IsOfflineEvents" is displayed

  @BrianReactionOnEventJustAdd
  Scenario: Brain Reaction On This Event
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "reactionButton"

  @BrainSeePostCreateOnFeed
  Scenario: Brain See Post Create on Feed
    Given the user logged in as "brian"
    When the user want to access "userAvatar"
    Then the user see "added an event" on left menu
    Then the user see "1 person going" displayed success
    And the user see h4 "IsOfflineEvents" is displayed

  @BrainSeeOnGoingOnEventJustCreated
  Scenario: Brain See OnGoing On EventsOffline
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user see "Your event" displayed success

  @BrainVerifyMyHostingEvent
  Scenario: Brain Verify my hosting events
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab "/event/hosted"
    When the user want to click on list button label "ONGOING" and process
    Then the user see title "itemTitle" with value "IsOfflineEvents"
    Then the user see "Your event" displayed success

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
    Then the user see "Your event" displayed success

  @BrianVerifyHostListOnEvents
  Scenario: Brain Verify HostList On Events
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsOfflineEvents" is displayed
    And the user want to "All Hosts"
    And the user want to "Host List"
    Then the user see "Brian" on invited tab

  @BrianVerifyGuestListOnPublicEvent
  Scenario: Brain Verify GuestList On Events
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsOfflineEvents" is displayed
    And the user want to "View list"
    And the user want to "Going"
    Then the user see "Brian" on invited tab
    And the user want to "Invited"
    Then the user see "No Content" on tab

  @BrainVerifyManageTab
  Scenario: Brain Verify Manage Tab
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    When the user want to click on list button label "MANAGE" and process
    Then the user see title "Event Settings" is displayed

  @BrainAddNewHost
  Scenario: Brain Add New Hosts
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "Edit Event" and process
    And the user add value on "host" is "test"
    When the user want to select category at 1 on dropdown list "host"
    And the user click on button "buttonSubmit"
    And the user want to "All Hosts"
    And the user want to "Invited"
    Then the user see "test" on invited tab
    And the user see button "Cancel Invite" is displayed
    When the user click on button "buttonClose"
    And I want to click on "Logout"
    Given the user logged in as "test"
    When the user action on "More"
    Then the browser opened at item "event" and tab "/event/friend"
    And the user want to click on title "itemTitle" and process
    And the user "Accept" on invite
    Then the user see message "Host invitation accepted." displayed
    And the user want to refresh page before handle the action
    And the user want to "All Hosts"
    And the user want to "Invited"
    Then the user see "test" on invited tab
    When the user click on button "buttonClose"
    And the user want to click on list button label "EVENT INFO" and process
    And the user want to click on list button label "DISCUSSIONS" and process
    Then the user want to click on list button label "MANAGE" and process
    And the user want to click on list button label "PENDING POSTS" and process

  @BrianRemoveHost
  Scenario: Brain Remove Hosts
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "Edit Event" and process
    And the user add value on "host" is ""
    Then the user want to click on list button label "Clear" and process
    And the user click on button "buttonSubmit"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Given the user logged in as "test"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user want to click on title "itemTitle" and process
    Then the user see "Going" displayed success

  @BrainInviteAnotherUserJoinEvent
  Scenario: Brain Invite Another User Join Event
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    When the user action on "Invite"
    And the user click on div "Invite People To Come" and process
    Then the user "itemUndefined" this item
    And the user click on button "buttonDone"
    Then the user see message "Invitation(s) successfully sent." displayed
    And I want to click on "Logout"
    Given the user logged in as "admin"
    When the user "new_notification" this item
    Then the user click on notification "Brian invited you to the event IsOfflineEvents" and process
    Then the user see button "Not Interested" is default
    When the user want to click on button label "Not Interested" and process
    And the user access this blog by "Going" and process
    Then the user see message "Responded successfully" displayed
    And the user want to "View list"
    And the user want to "Going"
    Then the user see "admin" on invited tab

  @BrianShareNowEvents
  Scenario: Brain Share Now On Event Just Add
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

  @BrianShareOnFeedEvents
  Scenario: Brian Share On Feed Events
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user action on "Share to News Feed"
    And the user want to "Share"
    Then the user see message "Shared to feed" displayed
    And the user back to "linkLogo" page
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see h4 "IsOfflineEvents" is displayed

  @BrianShareEventsOnFriendProfile
  Scenario: Brian Share On Events On Friend Profile
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user "share_on_friends" this item
    Then the user "itemUndefined" this item
    And the user click on button "submit"
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see h4 "IsOfflineEvents" is displayed