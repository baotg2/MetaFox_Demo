@app_core @verifyUI @brian @previewSite
Feature: Brain Verify on the UI

  Scenario: Brian See All App By More Button
    Given the user logged in as "brian"
    When the user "more_menu" this item
    Then the user sees text "Forum "
    And the user sees text "Friends "
    And the user sees text "Members "
    And the user sees text "Blogs "
    And the user sees text "Videos "
    And the user sees text "Photos "
    And the user sees text "Polls "
    #And the user sees text "Quizzes "
    And the user sees text "Events "
#    And the user sees text "Music "
#    And the user sees text "Marketplace "
    And the user sees text "Pages "
    And the user sees text "Groups "
    And the user sees text "Saved Items "
    #And the user sees img "/logo.png"

  Scenario: Brian Change to dark mode
    Given the user logged in as "brian"
    And I want to click on "Dark Mode"
    When the user sees item of "On"
    Then the user sees img "/logo-dark.png"
    And the user want to refresh page before handle the action
    And I want to click on "Dark Mode"
    When the user sees item of "Off"
    Then the user sees img "/logo.png"
    When the user sees item of "Auto"

  Scenario: Brian View all notifications
    Given the user logged in as "brian"
    When the user "new_notification" this item
    And the user sees text "notificationSettingsMenu" and click on
    And the user clicks on "Open Notifications"
    Then the user sees text "Notifications"
    Then the user sees text "Mark all as read "
    Then the user sees text "Setting "

  Scenario: Brain Access Settings
    Given the user logged in as "brian"
    When I want to click on "Account Settings"
    Then the user sees text "General "
    #And the user sees text "Payment "
    And the user sees text "Your Profile "
    And the user sees text "Invisible Mode "
    And the user sees text "Sharing Items "
    And the user sees text "Email Notifications "
    And the user sees text "Blocked Users "
    And the user sees text "Profile Menu "

  Scenario: Brian verify UI from side menu
    Given the user logged in as "brian"
    And the user sees h5 text "Shortcuts" displayed
    When the user clicks on "More"
    Then the user sees div element "Home" displayed
    And the user sees div element "Friends" displayed
    And the user sees div element "Members" displayed
    And the user sees div element "forum" displayed
    And the user sees div element "Blogs" displayed
    And the user sees div element "Videos" displayed
    And the user sees div element "Photos" displayed
    And the user sees div element "Polls" displayed
    #And the user sees div element "subscription" displayed
    #And the user sees div element "Quizzes" displayed
    And the user sees div element "Events" displayed
    #And the user sees div element "Music" displayed
    #And the user sees div element "Marketplace" displayed
    And the user sees div element "Pages" displayed
    And the user sees div element "Groups" displayed
    And the user sees div element "Saved Items" displayed
    Then the user sees div element "less" displayed

  Scenario: Brain Access App From More Menu
    Given the user logged in as "brian"
    Then the user "more_menu" this item
    And the user clicks on "Forum"
    Then the user sees text "Forums"
    When the user "more_menu" this item
    And the user clicks on "Friends"
    Then the user sees text "Friend Requests"
    When the user "more_menu" this item
    And the user clicks on "Members"
    When the user "more_menu" this item
    And the user clicks on "Blogs"
    Then the user sees text "Blogs"
    When the user "more_menu" this item
    And the user clicks on "Videos"
    Then the user sees text "Videos"
    When the user "more_menu" this item
    And the user clicks on "Activity Points"
    Then the user sees text "Activity Point"