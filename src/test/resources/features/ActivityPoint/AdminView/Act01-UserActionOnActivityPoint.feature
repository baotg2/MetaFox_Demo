@app_activitypoint @admin @focus
Feature: Admin action on ActivityPointApp

  Scenario: Admin Add New Package
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Activity Point"
    When the user want to "Add New Package"
    And the user adds title with value "AutoPackagePoint"
    And the user clicks on input field "amount" with value "1"
    And the user clicks on input field "price.USD" with value "1"
    And the user clicks on input field "price.EUR" with value "2"
    And the user clicks on input field "price.GBP" with value "3"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Manage Point Package
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Activity Point"
    When the user want to "Manage Packages"
    And the user clicks on input field "q" with value "AutoPackagePoint"
    When the user want to "Search"
    Then the user sees text "AutoPackagePoint "
    And the user want to click on button label "Options" and process
    And the user sees item of "Edit"
    Then the user sees text "Edit Package "
    When the user clicks on button "buttonCancel"

  Scenario: Admin Change Point Settings On Blog
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Activity Point"
    When the user want to "Point Settings"
    And the user add value on "select-module_id" is "Blog"
    And the user clicks on button "buttonSubmit"
    And the user want to click on button label "Options" and process
    And the user sees item of "Edit"
    When the user clicks on input field "points" with value "1"
    And the user clicks on input field "max_earned" with value "10"
    And the user want to "Save Changes"