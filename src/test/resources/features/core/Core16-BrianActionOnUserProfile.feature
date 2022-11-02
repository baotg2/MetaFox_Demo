@app_core @userProfile @brian @previewSite
Feature: Brain Process On User Profile

  Scenario: Brain Access User Profile
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user sees text "About Me"
    Then the user sees tab "Friends"
    Then the user sees tab "Photos"
    And the user want to access items "friend" on user profile
    And the user want to access items "about" on user profile
    And the user want to access items "photo" on user profile
    And the user want to access items "video" on user profile

  Scenario Outline: Brian Edit Profile
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user sees text "Edit Profile"
    And the user add value on "selectCountryState" is "<country_state>"
    Then the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Examples:
      |country_state|
      |Vietnam     |
      |United States|

  Scenario: Brian Add Bio
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user sees text "Edit Profile"
    Then the user clicks on input field "bio" with value "Everyone else was taken so this is me"
    Then the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user want to access "userAvatar"
    And the user want to access items "about" on user profile
    Then the user sees text "Everyone else was taken so this is me "

  Scenario: Brian Add About Me
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user sees text "Edit Profile"
    Then the user add value "Designer and Photographer" on textArea "inputAboutMe"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user want to access "userAvatar"
    And the user want to access items "about" on user profile
    Then the user sees text "Designer and Photographer "

  Scenario: Brian Add Interested
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user sees text "Edit Profile"
    Then the user add value "Enjoy something" on textArea "inputInterest"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user want to access "userAvatar"
    And the user want to access items "about" on user profile
    Then the user sees text "Enjoy something "

  Scenario: Brian Add Hobbies
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user sees text "Edit Profile"
    Then the user add value "Judo" on textArea "inputHobbies"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user want to access "userAvatar"
    And the user want to access items "about" on user profile
    Then the user sees text "Judo "

  Scenario: Brian Edit Birth Day
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    And the user add value "" on element "0"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message