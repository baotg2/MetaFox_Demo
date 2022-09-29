@MetaFox @events @guestActionOnPublicEvent
  Feature: Guest Action On Public Events

  @GuestVerifyOnEventDetail
  Scenario: Guest Verify On Event Detail
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsOfflineEvents" is displayed
    Then the user want to see tab "DISCUSSIONS" displayed on detail
    And the user want to see tab "MANAGE" displayed on detail
    And the user want to see tab "PENDING POSTS" displayed on detail
    Then the user see "Not Interested" displayed success

  @GuestVewHostListByDefaultSettings
  Scenario: Guest Vew Host List by default settings
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user want to "All Hosts"
    And the user want to "Host List"
    Then the user see "Brian" on invited tab

  @GuestChangeStatusOnEventDetails
  Scenario: Guest Change Status On Event Details
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user want to click on button label "Not Interested" and process
    When the user "Interested" this item
    Then the user see message "Updated response successfully" displayed
    #And the user want to refresh page before handle the action
    And the user want to click on list button label "DISCUSSIONS" and process
    And the user want to click on list button label "EVENT INFO" and process

  @GuestChangeStatusOnMuiGridView
  Scenario: Guest Change Status On Multiple Grid Views
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "Interested" and process
    Then the user action on "Not Interested"
    Then the user see message "Updated response successfully" displayed
    And the user want to click on title "itemTitle" and process
    And the user want to refresh page before handle the action
    Then the user want to see tab "DISCUSSIONS" displayed on detail
    And the user want to see tab "MANAGE" displayed on detail

  @GuestShareNowEvents
  Scenario: Guest Share Now On Event Just Add
    Given the user logged in as "terry"
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

  @GuestShareOnFeedEvents
  Scenario: Guest Share On Feed Events
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "event" and tab ""
    And the user see search field "Search events" and typing keys "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user action on "Share to News Feed"
    And the user want to "Share"
#    Then the user see message "Shared successfully" displayed
    And the user back to "linkLogo" page
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see h4 "IsOfflineEvents" is displayed

  @BrainDeleteOfflineEvents
  Scenario: Brain delete offline events
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