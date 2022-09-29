@MetaFox @core  @brianActionOnActivityPoint
Feature:  Brain Action On Activity Point

  @BrainVerifyUIActivityPoint
  Scenario: Brain Verify Ui Activity Point
    Given the user logged in as "brian"
    When I want to click on "Activity Points"
    Then the user see title h2 "Point Transactions" is displayed
    And the user see "Point Transactions" on left menu
    And the user see "Point Packages" on left menu
    And the user see "How To Earn" on left menu
    And the user see "Transactions History" on left menu

  @BrainVerifyUIViewAllTransactionsHistoryView
  Scenario: Brian Verify UIView All Transactions History
    Given the user logged in as "brian"
    When I want to click on "Activity Points"
    Then the user see title h2 "Point Transactions" is displayed
    And the user click on element link text a "View All Transactions"
    Then the user see title h2 "Transactions History" is displayed