@MetaFox @core @brianVerifyOnUI
Feature: Brain Verify on the UI

  @BrainSeeAllAppByMoreButton
  Scenario: Brian See All App By More Button
    Given the user logged in as "brian"
    When the user "more_menu" this item
    Then the user see "Forum" on left menu
    And the user see "Friends" on left menu
    And the user see "Members" on left menu
    And the user see "Blogs" on left menu
    And the user see "Videos" on left menu
    And the user see "Photos" on left menu
    And the user see "Polls" on left menu
    And the user see "Quizzes" on left menu
    And the user see "Events" on left menu
    And the user see "Music" on left menu
    And the user see "Marketplace" on left menu
    And the user see "Pages" on left menu
    And the user see "Groups" on left menu
    And the user see "Saved Items" on left menu
    And the user see img "/logo.png" is displayed


  @BrianChangeToDarkMode
  Scenario: Brian Change to dark mode
    Given the user logged in as "brian"
    And I want to click on "Dark Mode"
    When the user see item of "On"
    Then the user see img "/logo-dark.png" is displayed
    And the user want to refresh page before handle the action
    And I want to click on "Dark Mode"
    When the user see item of "Off"
    Then the user see img "/logo.png" is displayed
    When the user see item of "Auto"
    Then the user see img "/logo.png" is displayed

  @BrianViewAllNotification
  Scenario: Brian View all notifications
    Given the user logged in as "brian"
    When the user "new_notification" this item
    And the user see "notificationSettingsMenu" and click on
    And the user action on "Open Notifications"
    Then the user see title h2 "Notifications" is displayed
    Then the user see "Mark all as read" is displayed on user profile
    Then the user see "Setting" is displayed on user profile

  @BrainAccessSettings
  Scenario: Brain Access Settings
    Given the user logged in as "brian"
    When I want to click on "Account Settings"
    Then the user see "General" on left menu
    #And the user see "Payment" on left menu
    And the user see "Your Profile" on left menu
    And the user see "Invisible Mode" on left menu
    And the user see "Sharing Items" on left menu
    And the user see "Email Notifications" on left menu
    And the user see "Blocked Users" on left menu
    And the user see "Profile Menu" on left menu
    
  @BrianVerifyUIFromSideMenu
  Scenario: Brian verify UI from side menu
    Given the user logged in as "brian"
    And the user see h5 text "Shortcuts" displayed
    When the user action on "More"
    Then the user see div element "Home" displayed
    And the user see div element "Friends" displayed
    And the user see div element "Members" displayed
    And the user see div element "forum" displayed
    And the user see div element "Blogs" displayed
    And the user see div element "Videos" displayed
    And the user see div element "Photos" displayed
    And the user see div element "Polls" displayed
    And the user see div element "subscription" displayed
    And the user see div element "Quizzes" displayed
    And the user see div element "Events" displayed
    And the user see div element "Music" displayed
    And the user see div element "Marketplace" displayed
    And the user see div element "Pages" displayed
    And the user see div element "Groups" displayed
    And the user see div element "Saved Items" displayed
    Then the user see div element "less" displayed

  @BrianVerifyActionOnFeed
  Scenario: Brian Verify Action On Feed
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to click on button label "actionMenu" and process
    Then the user see "Edit" on left menu
    Then the user see "Pin Post" on left menu
    Then the user see "Save" on left menu
    Then the user see "Delete" on left menu

  @BrainAccessAppFromMoreMenu
  Scenario: Brain Access App From More Menu
    Given the user logged in as "brian"
    Then the user "more_menu" this item
    And the user action on "Forum"
    Then the user see title "Forum" is displayed
    When the user "more_menu" this item
    And the user action on "Friends"
    Then the user see title "Friend Requests" is displayed
    When the user "more_menu" this item
    And the user action on "Members"
    When the user "more_menu" this item
    And the user action on "Blogs"
    Then the user see title "Blogs" is displayed
    When the user "more_menu" this item
    And the user action on "Videos"
    Then the user see title "Videos" is displayed
    When the user "more_menu" this item
    And the user action on "Activity Points"
    Then the user see title "Activity Point" is displayed