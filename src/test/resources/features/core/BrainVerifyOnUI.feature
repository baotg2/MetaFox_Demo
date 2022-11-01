@MetaFox @core @brianVerifyOnUI
Feature: Brain Verify on the UI

  @BrainSeeAllAppByMoreButton
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
    #And the user seesimg "/logo.png" is displayed


  @BrianChangeToDarkMode
  Scenario: Brian Change to dark mode
    Given the user logged in as "brian"
    And I want to click on "Dark Mode"
    When the user sees item of "On"
    Then the user seesimg "/logo-dark.png" is displayed
    And the user want to refresh page before handle the action
    And I want to click on "Dark Mode"
    When the user sees item of "Off"
    Then the user seesimg "/logo.png" is displayed
    When the user sees item of "Auto"

  @BrianViewAllNotification
  Scenario: Brian View all notifications
    Given the user logged in as "brian"
    When the user "new_notification" this item
    And the user sees text "notificationSettingsMenu" and click on
    And the user clicks on "Open Notifications"
    Then the user seestitle h2 "Notifications" is displayed
    Then the user sees text "Mark all as read "
    Then the user sees text "Setting "

  @BrainAccessSettings
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
    
  @BrianVerifyUIFromSideMenu
  Scenario: Brian verify UI from side menu
    Given the user logged in as "brian"
    And the user seesh5 text "Shortcuts" displayed
    When the user clicks on "More"
    Then the user seesdiv element "Home" displayed
    And the user seesdiv element "Friends" displayed
    And the user seesdiv element "Members" displayed
    And the user seesdiv element "forum" displayed
    And the user seesdiv element "Blogs" displayed
    And the user seesdiv element "Videos" displayed
    And the user seesdiv element "Photos" displayed
    And the user seesdiv element "Polls" displayed
    #And the user seesdiv element "subscription" displayed
    #And the user seesdiv element "Quizzes" displayed
    And the user seesdiv element "Events" displayed
    #And the user seesdiv element "Music" displayed
    #And the user seesdiv element "Marketplace" displayed
    And the user seesdiv element "Pages" displayed
    And the user seesdiv element "Groups" displayed
    And the user seesdiv element "Saved Items" displayed
    Then the user seesdiv element "less" displayed

  @BrainAccessAppFromMoreMenu
  Scenario: Brain Access App From More Menu
    Given the user logged in as "brian"
    Then the user "more_menu" this item
    And the user clicks on "Forum"
    Then the user seestitle "Forums" is displayed
    When the user "more_menu" this item
    And the user clicks on "Friends"
    Then the user seestitle "Friend Requests" is displayed
    When the user "more_menu" this item
    And the user clicks on "Members"
    When the user "more_menu" this item
    And the user clicks on "Blogs"
    Then the user seestitle "Blogs" is displayed
    When the user "more_menu" this item
    And the user clicks on "Videos"
    Then the user seestitle "Videos" is displayed
    When the user "more_menu" this item
    And the user clicks on "Activity Points"
    Then the user seestitle "Activity Point" is displayed