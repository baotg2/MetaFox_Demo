@MetaFox @core  @brianActionOnActivityPoint
Feature:  Brain Action On Activity Point

  @BrainVerifyUiActivityPoint
  Scenario: Brain Verify Ui Activity Point
    Given the user logged in as "brian"
    When I want to click on "Activity Points"
    Then the user see title h2 "Point Transactions" is displayed
    And the user see "Point Transactions" on left menu
    And the user see "Point Packages" on left menu
    And the user see "How To Earn" on left menu
    And the user see "Transactions History" on left menu

  @AdminConfigOnACP
  Scenario: Admin Config OnACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Activity Point"
    Then the user see title "Manage Point Settings" is displayed
