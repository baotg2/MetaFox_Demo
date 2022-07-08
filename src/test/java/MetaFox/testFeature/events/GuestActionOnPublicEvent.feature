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
      And the user want to refresh page before handle the action
      Then the user see button "DISCUSSIONS" is displayed
      And the user see button "EVENT INFO" is displayed