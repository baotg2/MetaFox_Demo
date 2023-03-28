@app_listing @admin @previewSite
Feature:  Brian process on listing app

  Scenario: Brian can add a new listing items
    Given the user logged in as "admin"
    And the browser opened at "/marketplace/add"
    And within the content
    Given the user add on "inputTitle" with value "TestAutoListingPayment"
    And the user types a sentence in "inputShortDescription"
    And the user adds description
    When the user add on "inputPriceUsd" with value "1"
    And the user add on "inputPriceEur" with value "1"
    And the user add on "inputPriceGbp" with value "1"
    When the user want to scroll to the end of page
    And the user add on "fieldLocation" with value "Ho Chi Minh City"
    When the user selects location
    And the user enable payment
    And the user "Create"
    Then the user sees successful flash message

  Scenario: Admin Payment Listing
    Given the user logged in as "brian1"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the user searches with text "TestAutoListing"
    And within the content
    And the user clicks on the item title
    When the user "Buy Now"
    And the user selects payments type
    And the user submits the form