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

  Scenario: Brian Sees Events On My Hosting Event
    Given the user logged in as "brian1"
    When the browser opened at "/event/hosted?stab=ongoing"
    Given within the content
    Then the user sees text "Your event"

  Scenario: Brain Verify HostList On Events
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    When the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    When the user clicks on the item title
    And the user want to "All Hosts"
    And the user want to "Host List"
    Then the user sees "/brian1" on screen

  Scenario: Brain Verify GuestList On Events
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    When the user clicks on the item title
    When the user want to "View list"
    And the user want to "Going"
    Then the user sees "/brian1" on screen
    And the user want to "Invited"
    Then the user sees "No one has been invited" on dialog

  Scenario: Brain Verify Manage Tab
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    Given within the content
    When the user clicks on the item title
    When the user navigates to "?stab=manage"
    Then the user sees text "Event Settings"

  Scenario: Brain Add New Hosts
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    Given within the content
    When the user opens action menu
    And the user clicks on menu item "edit"
    And the user add value on "host" is "MetaFox"
    When the user want to select category at 1 on dropdown list "host"
    And the user clicks on button "buttonSubmit"
    And the user want to "All Hosts"
    And the user want to "Invited"
    Then the user sees "/admin" on screen
    When the user clicks on button "buttonClose"
    Given switch account "admin"
    When the browser opened at "/"
    And the user "new_notification" this item
    And the user clicks on notification " invited you to host the event " and process

  Scenario: Brain Share Now On Event Just Add
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    Given within the content
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "share_now"
    Then the user sees successful flash message
    Given within the content
    And the user back to "linkLogo" page
    Then the user sees text "shared a post"
    Then the user sees text "IsOfflineEvents"

  Scenario: Brian Share On Feed Events
    Given the user logged in as "brian1"
    When the browser opened at "/event"
    And within the sidebar
    And the user searches with text "IsOfflineEvents"
    Given within the content
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "share_to_newsfeed"
    Given within the status composer
    And the user clicks on button "submit"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    Then the user sees text "IsOfflineEvents"