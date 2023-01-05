@app_core @accountSetting @brian
Feature: Brain Process On Account Settings Is No One

  Scenario: Brain Verify Send Friend Request Is NoOne
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can send you a friend request?" and change to "No One"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the slot top
    Then the user sees button "Message" is enabled
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can send you a friend request?" and change to "Community"
    Then the user sees successful flash message

  Scenario: Brain Verify View His Friends List Is NoOne
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "list?" and change to "No One"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the slot top
    Then the user don't see tab "friend" on user profile
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "list?" and change to "Community"
    Then the user sees successful flash message

  Scenario: Brian Verify Post On His Wall Is NoOne
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can post on your profile?" and change to "No One"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the content
    Then the user don't see "whatsHappening"
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can post on your profile?" and change to "Community"
    Then the user sees successful flash message

  Scenario: Brian Verify View On His Wall Is NoOne
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view the posts or activities on your profile?" and change to "No One"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the content
    Then the user sees text "No content is found."
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view the posts or activities on your profile?" and change to "Anyone"
    Then the user sees successful flash message

  Scenario: Brian Verify View Basic Information Is NoOne
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view your basic info?" and change to "No One"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the subside
    Then the user don't see "detailview profile detail about"
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view your basic info?" and change to "Community"
    Then the user sees successful flash message

  Scenario: Brian Verify View Photo Is NoOne
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view photos on your profile page?" and change to "No One"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the slot top
    Then the user not see a text "Photos" displayed on page
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Community"
    Then the user sees successful flash message

  Scenario: Brian Verify View Profile Page Is NoOne
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view your profile page?" and change to "No One"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the slot top
    Then the user sees text "Profile is private "
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view your profile page?" and change to "Anyone"
    Then the user sees successful flash message

  Scenario: Brian Verify Information Tab On Profile Page Is NoOne
    Given the user logged in as "brian1"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view the info tab on your profile page?" and change to "No One"
    Then the user sees successful flash message
    Given switch account "terry"
    And the browser opened at "/brian1"
    When within the subside
    Then the user don't see tab "about" on user profile
    Given switch account "brian"
    And the browser opened at "/settings/profile"
    When within the content
    And the user select privacy at field "Who can view the info tab on your profile page?" and change to "Community"
    Then the user sees successful flash message