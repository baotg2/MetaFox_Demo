@app_activitypoint @admin @previewSite
Feature: Admin action on ActivityPointApp

  Scenario: Admin add new package
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the browser opened at "/admincp/activitypoint/package/create"
    #open form create package
    When within the content
    And the user adds title with value "AutoPackagePoint"
    And the user clicks on input field "amount" with value "1"
    And the user clicks on input field "price.USD" with value "1"
    And the user clicks on input field "price.EUR" with value "2"
    And the user clicks on input field "price.GBP" with value "3"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin verify manage Point Package
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the browser opened at "/admincp/activitypoint/package/browse"
    #search package
    When within the content
    When the user add on "inputQ" with value "AutoPackagePoint"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "AutoPackagePoint"

  Scenario: Admin Change Point Settings On Blog
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the browser opened at "/admincp/activitypoint/setting/browse"
    Given within the content
    And the user want to click on button label "Options" and process
    And the user modified items
    When the user clicks on input field "points" with value "1"
    And the user clicks on input field "max_earned" with value "10"
    And the user want to "Save Changes"
    Then the user sees successful flash message