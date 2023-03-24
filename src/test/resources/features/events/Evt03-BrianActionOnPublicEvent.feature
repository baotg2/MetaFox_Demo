@app_event @brian
Feature:  Brain Process On Public Events

  Scenario: Brian Add New Events With Empty Value
    Given the user logged in as "brian1"
    And the browser opened at "/event/add"
    And within the content
    When the user add on "inputName" with value "IsOfflineEvents"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Location is a required field."

  Scenario: Brian Add New Events EventsOffline
    Given the user logged in as "brian1"
    And the browser opened at "/event/add"
    And within the content
    When the user add on "inputName" with value "IsOfflineEvents"
    And the user want to add new date is "29"
    When the user want to scroll to the end of page
    When the user clicks on "fieldLocation"
    And the user selects location
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees page url matches "/event/\d+"

  Scenario: Brain Reaction On This Event
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    Given within the content
    And the user clicks on the item title
    And the user clicks on button "reactionButton"

  Scenario: Brain See Post Create on Feed
    Given the user logged in as "brian1"
    When the browser opened at "/brian1"
    Then the user sees text "added an event "
    Then the user sees text "1 person going"
    And the user sees text "IsOfflineEvents"

  Scenario: Brain See OnGoing On EventsOffline
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    When the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    Then the user sees text "Your event"
    And the user sees text "Ongoing"

  Scenario: Brian Sees Events On My Hosting Envent
    Given the user logged in as "brian1"
    When the browser opened at "/event/hosted?stab=ONGOING"
    Given within the content
    Then the user sees text "Your event"
    And the user sees text "Ongoing"

  Scenario: Brain Verify Number of guests joined events
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    When the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    Then the user sees text "IsOfflineEvents"
    Then the user sees text "Your event"

  Scenario: Brain Verify HostList On Events
    Given the user logged in as "brian1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    Then the user sees text "IsOfflineEvents"
    And the user want to "All Hosts"
    And the user want to "Host List"
    Then the user sees text "Brian"

  Scenario: Brain Verify GuestList On Events
    Given the user logged in as "brian1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    Then the user sees text "IsOfflineEvents"
    And the user want to "View list"
    And the user want to "Going"
    Then the user sees text "Brian"
    And the user want to "Invited"
    Then the user sees text "No Content"

  Scenario: Brain Verify Manage Tab
    Given the user logged in as "brian1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    When the user want to click on list button label "MANAGE" and process
    Then the user sees text "Event Settings"

  Scenario: Brain Add New Hosts
    Given the user logged in as "brian1"
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
    Given the user logged in as "test1"
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

  Scenario: Brain Remove Hosts
    Given the user logged in as "brian1"
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
    Given the user logged in as "test1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user clicks on the item title
    Then the user sees text "Going"

  Scenario: Brain Invite Another User Join Event
    Given the user logged in as "brian1"
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

  Scenario: Brain Share Now On Event Just Add
    Given the user logged in as "brian1"
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
    Then the user sees text "IsOfflineEvents"

  Scenario: Brian Share On Feed Events
    Given the user logged in as "brian1"
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
    Then the user sees text "IsOfflineEvents"

  Scenario: Brian Share On Events On Friend Profile
    Given the user logged in as "brian1"
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
    Then the user sees text "IsOfflineEvents"