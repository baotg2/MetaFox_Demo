@MetaFox @core @brianVerifyOnUI
Feature: Brain Verify on the UI

  @BrainSeeAllAppByMoreButton
  Scenario: Brian See All App By More Button
    Given the user logged in as "brian"
    When the user "more_menu" this item
    Then the user see "Forum" on left menu
    Then the user see "Friends" on left menu
    Then the user see "Members" on left menu
    Then the user see "Blogs" on left menu
    Then the user see "Videos" on left menu
    Then the user see img "/logo.png" is displayed


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
    Then I want to click on "Account Settings"
    And the user see "General" on left menu
    And the user see "Payment" on left menu
    And the user see "Your Profile" on left menu
    And the user see "Invisible Mode" on left menu
    And the user see "Sharing Items" on left menu
    And the user see "Email Notifications" on left menu
    And the user see "Blocked Users" on left menu
    And the user see "Profile Menu" on left menu