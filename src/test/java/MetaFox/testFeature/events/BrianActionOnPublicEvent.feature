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
    Then the user see message "Event created successfully" displayed
    Then the user see title "IsOfflineEvents" is displayed

  @BrainSeePostCreateOnFeed
  Scenario: Brain See Post Create on Feed
    Given the user logged in as "brian"
    When the user want to access "userAvatar"
    Then the user see "added an event" on left menu
    Then the user see "1 person going" displayed success
    And the user see "IsOfflineEvents" on left menu

  @BrainSeeOnGoingOnEventJustCreated
  Scenario: Brain See OnGoing On EventsOffline
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user see "Ongoing" on left menu

  @BrainVerifyMyHostingEvent
  Scenario: Brain Verify my hosting events
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab "/event/hosted"
    When the user want to click on button label "ONGOING" and process
    Then the user see title "itemTitle" with value "IsOfflineEvents"
    Then the user see button "Going" is default

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
    Then the user see button "Going" is default
    And the user see button "DISCUSSIONS" is displayed
    And the user see button "MANAGE" is displayed
    #Then the user see button "PENDING POSTS" is displayed
    And the user see button "EVENT INFO" is displayed

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
    When the user want to "MANAGE"
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
    When the user "new_notification" this item
    Then the user click on notification "Brian invited you to host the event IsOfflineEvents" and process
    And the user see " invited you to be co-host for this event" on left menu
    And the user "Accept" on invite
    Then the user see message "Host invitation accepted." displayed
    And the user want to refresh page before handle the action
    And the user want to "All Hosts"
    And the user want to "Invited"
    Then the user see "test" on invited tab
    When the user click on button "buttonClose"
    And the user see button "DISCUSSIONS" is displayed
    And the user see button "MANAGE" is displayed
    Then the user see button "PENDING POSTS" is displayed
    And the user see button "EVENT INFO" is displayed

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

  @BrainInviteAnotherUserJoinEvent
  Scenario: Brain Invite Another User Join Event
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "Invite People To Come" and process
    Then the user "itemUndefined" this item
    And the user click on button "buttonDone"
    Then the user see message "Invitation(s) successfully sent." displayed
    And I want to click on "Logout"
    Given the user logged in as "admin"
    When the user "new_notification" this item
    Then the user click on notification "Brian invited you to the event IsOfflineEvents" and process
    And the user " invited you" on invite
    Then the user see h5 text "Going" displayed
    Then the user see h5 text "Interested" displayed
    Then the user see h5 text "Not Interested" displayed
    When the user "Going" on invite
    Then the user see message "Responded successfully" displayed
    And the user want to "View list"
    And the user want to "Going"
    Then the user see "admin" on invited tab