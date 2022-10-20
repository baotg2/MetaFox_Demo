@MetaFox @core  @brianActionOnActivityPoint
Feature:  Brain Action On Activity Point

  @BrainVerifyUIActivityPoint
  Scenario: Brain Verify Ui Activity Point
    Given the user logged in as "brian"
    When I want to click on "Activity Points"
    Then the user see title h2 "Point Transactions" is displayed
    And the user see "Point Packages" on left menu
    And the user see "How To Earn" on left menu
    And the user see "Transaction History" on left menu

  @BrainVerifyUIViewAllTransactionsHistoryView
  Scenario: Brian Verify UIView All Transactions History
    Given the user logged in as "brian"
    When I want to click on "Activity Points"
    Then the user see title h2 "Point Transactions" is displayed
    And the user click on element link text a "View All Transactions"
    Then the user see title h2 "Transactions History" is displayed

  @AdminAddNewPackage
  Scenario: Admin Add New Package
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Activity Point"
    When the user want to "Add New Package"
    And the user action on input field "title" with value "AutoPackagePoint"
    And the user action on input field "amount" with value "1"
    And the user action on input field "price.USD" with value "1"
    And the user action on input field "price.EUR" with value "2"
    And the user action on input field "price.GBP" with value "3"
    And the user click on button "buttonSubmit"
    Then the user see message "Package has been created successfully." displayed

  @AdminMangePointPackage
  Scenario: Admin Manage Point Package
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Activity Point"
    When the user want to "Manage Packages"
    And the user action on input field "q" with value "AutoPackagePoint"
    When the user want to "Search"
    Then the user see "AutoPackagePoint" is displayed on user profile
    And the user want to click on button label "Options" and process
    And the user see item of "Edit"
    Then the user see "Edit Package" is displayed on user profile
    When the user click on button "buttonCancel"