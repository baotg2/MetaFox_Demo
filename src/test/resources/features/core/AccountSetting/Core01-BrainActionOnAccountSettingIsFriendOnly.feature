@app_core @accountSetting @brian
Feature: Brain Process On Account Settings Is Friend Only

  Scenario: Brian Verify View Profile Page Is Friend Only
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view your profile page?" and change to "Friends Only"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the slot top
    Then the user see message "Profile is private"
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view your profile page?" and change to "Anyone"
    Then the user sees successful flash message

  Scenario: Brian Verify View Basic Information Is Friend Only
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view your basic info?" and change to "Friends Only"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the subside
    Then the user don't see "detailview profile detail about"
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view your basic info?" and change to "Anyone"
    Then the user sees successful flash message

  Scenario: Brian Verify View Photo Is Friends Only
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Friends Only"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    Then the user not see a text "Photos" displayed on page
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Anyone"
    Then the user sees successful flash message