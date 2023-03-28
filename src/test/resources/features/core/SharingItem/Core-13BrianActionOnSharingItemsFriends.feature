@app_core @sharingItem @brian @previewSite
Feature: Brain Process On Sharing Items Friends

  Scenario: Brain Verify Privacy Sharing Blogs Is Friends
    Given the user logged in as "brian1"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Blogs" and change to "Friends"
    And the browser opened at "/blog/add"
    Then the user sees text "Friends"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Blogs" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Events Is Friends
    Given the user logged in as "brian1"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Events" and change to "Friends"
    And the browser opened at "/event/add"
    Then the user sees text "Friends"
    When the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Events" and change to "Everyone"


  Scenario: Brain Verify Privacy Sharing Photo Is Friends
    Given the user logged in as "brian1"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Photos" and change to "Friends"
    And the browser opened at "/photo/add"
    Then the user sees text "Friends"
    When the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Photos" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Photos Albums Is Friends
    Given the user logged in as "brian1"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Photo Albums" and change to "Friends"
    And the browser opened at "/photo/album/add"
    Then the user sees text "Friends"
    When the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Photo Albums" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Polls Is Friends
    Given the user logged in as "brian1"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Polls" and change to "Friends"
    And the browser opened at "/poll/add"
    Then the user sees text "Friends"
    When the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Polls" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Videos Is Friends
    Given the user logged in as "brian1"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Videos" and change to "Friends"
    And the browser opened at "/video/share"
    Then the user sees text "Friends"
    When the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Videos" and change to "Everyone"