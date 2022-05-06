@pHpV5 @brianProcessOnCore
Feature: Brain Process On Core

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

  @BrainAccessSettings
  Scenario: Brain Access Settings
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user want to edit "editName"
    And the user see button "cancel" is displayed