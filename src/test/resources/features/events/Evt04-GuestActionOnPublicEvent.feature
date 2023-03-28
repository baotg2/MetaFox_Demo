@app_event @brian @wip
Feature: Guest Action On Public Events

  Scenario: Guest Verify On Event Detail
    Given the user logged in as "terry1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    Then the user sees text "IsOfflineEvents"
    Then the user want to see tab "DISCUSSIONS" displayed on detail
    And the user want to see tab "MANAGE" displayed on detail
    And the user want to see tab "PENDING POSTS" displayed on detail
    Then the user sees text "Not Interested"

  Scenario: Guest Vew Host List by default settings
    Given the user logged in as "terry1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user want to "All Hosts"
    And the user want to "Host List"
    Then the user sees text "Brian" on invited tab

  Scenario: Guest Change Status On Event Details
    Given the user logged in as "terry1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user want to click on button label "Not Interested" and process
    When the user "Interested" this item
    Then the user sees successful flash message
    #And the user want to refresh page before handle the action
    And the user want to click on list button label "DISCUSSIONS" and process
    And the user want to click on list button label "EVENT INFO" and process

  Scenario: Guest Change Status On Multiple Grid Views
    Given the user logged in as "terry1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "Interested" and process
    Then the user clicks on "Not Interested"
    Then the user sees successful flash message
    And the user clicks on the item title
    And the user want to refresh page before handle the action
    Then the user want to see tab "DISCUSSIONS" displayed on detail
    And the user want to see tab "MANAGE" displayed on detail

  Scenario: Guest Share Now On Event Just Add
    Given the user logged in as "terry1"
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

  Scenario: Guest Share On Feed Events
    Given the user logged in as "terry1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share to News Feed"
    And the user want to "Share"
#    Then the user sees successful flash message
    And the user back to "linkLogo" page
    Then the user sees text "shared a post to newsfeed "
    Then the user sees h4 "IsOfflineEvents"

  Scenario: Brain delete offline events
    Given the user logged in as "brian1"
    When the user clicks on "More"
    Then the browser opened at item "event" and tab ""
    And the user searches with text "IsOfflineEvents"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "actionMenu" and process
    And the user clicks on div "delete" and process
    Then the user sees text "Are you sure you want to permanently delete this event?"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message