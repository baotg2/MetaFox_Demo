@app_listing @admin @previewSite
Feature:  Admin process on listing app

  Scenario: Admin can add a new listing items
    Given the user logged in as "admin"
    And the browser opened at "/marketplace/add"
    And within the content
    Given the user add on "inputTitle" with value "TestAutoListing"
    And the user types a sentence in "inputShortDescription"
    And the user adds description
    When the user add on "inputPriceUsd" with value "1"
    And the user add on "inputPriceEur" with value "1"
    And the user add on "inputPriceGbp" with value "1"
    When the user want to scroll to the end of page
    And the user add on "fieldLocation" with value "Ho Chi Minh City"
    When the user selects location
    And the user "Create"
    Then the user sees successful flash message

  Scenario: Admin sees post of listing on feed
    Given the user logged in as "admin"
    And within the content
    Then the user sees text "added a listing in marketplace"

  Scenario: Admin reaction on listing
    Given the user logged in as "admin"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the user searches with text "TestAutoListing"
    And within the content
    And the user clicks on the item title
    And the user clicks on button "reactionButton"

  Scenario: Admin comments on listing
    Given the user logged in as "admin"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the user searches with text "TestAutoListing"
    # verify
    Given within the content
    And the user clicks on the item title
    Then the user sees page url matches "/marketplace/\d+"
    # verify
    Given within the content
    When the user add comment "test comment"
    Then the user sees text "test comment"

  Scenario: Admin Feature Listing Just Add
    Given the user logged in as "admin"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the user searches with text "TestAutoListing"
    And within the content
    And the user clicks on the item title
    When the user opens action menu by aria-controls "detailActionMenu"
    And the user clicks on menu item "feature"
    Then the user sees successful flash message
    And the user sees flag featured

  Scenario: Admin Un-Feature Listing Just Add
    Given the user logged in as "admin"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the user searches with text "TestAutoListing"
    And within the content
    And the user clicks on the item title
    When the user opens action menu by aria-controls "detailActionMenu"
    And the user clicks on menu item "unfeature"
    Then the user sees successful flash message

  Scenario: Admin Share Now On Listing Just Add
    Given the user logged in as "admin"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the user searches with text "TestAutoListing"
    And within the content
    And the user clicks on the item title
    When the user opens share menu
    And the user clicks on menu item "share_now"
    Then the user sees successful flash message

  Scenario: Admin Invites Friends To Listing
    Given the user logged in as "admin"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the user searches with text "TestAutoListing"
    And within the content
    And the user clicks on the item title
    When the user opens action menu by aria-controls "itemInviteMenu"
    And the user clicks on menu item "invite_people"
    When the user select friend to friend list
    Then the user sees successful flash message

  Scenario: Brian Verify Invited Tab
    Given the user logged in as "brian1"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the browser opened at "/marketplace/invite"
    Given within the content
    Then the user sees text "TestAutoListing"

  Scenario: Admin Edit Listing Just Add
    Given the user logged in as "admin"
    And the browser opened at "/marketplace"
    And within the sidebar
    When the user searches with text "TestAutoListing"
    And within the content
    And the user clicks on the item title
    When the user opens action menu by aria-controls "detailActionMenu"
    And the user clicks on menu item "edit"
    When the user adds title with value "UpdateTestAutoListing"
    And the user submits the form
    Then the user sees page url matches "/marketplace/\d+"
    And the user sees successful flash message

  Scenario: Admin Delete Listing Just Add
    Given the user logged in as "admin"
    And the browser opened at "/marketplace"
    And within the sidebar
    And the user searches with text "UpdateTestAutoListing"
    Given within the content
    When the user opens action menu
    And the user clicks on menu item "delete"
    Then the user accepts the confirm


