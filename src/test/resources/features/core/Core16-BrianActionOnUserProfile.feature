@app_core @userProfile @brian @previewSite
Feature: Brain Process On User Profile

  Scenario Outline: Brian Edit Profile
    Given the user logged in as "brian"
    And the browser opened at "/user/3/profile"
    And within the content
    And the user add value on "selectCountryState" is "<country_state>"
    Then the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Examples:
      |country_state|
      |Vietnam     |
      |United States|

  Scenario: Brian Add Bio
    Given the user logged in as "brian"
    And the browser opened at "/user/3/profile"
    And within the content
    When the user add on "inputBio" with value "Everyone else was taken so this is me"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    When the browser opened at "/user/3/about"
    Then the user sees text "Everyone else was taken so this is me"

  Scenario: Brian Add About Me
    Given the user logged in as "brian"
    And the browser opened at "/user/3/profile"
    And within the content
    When the user add on "inputAboutMe" with value "Designer and Photographer"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    When the browser opened at "/user/3/about"
    Then the user sees text "Designer and Photographer"

  Scenario: Brian Add Interested
    Given the user logged in as "brian"
    And the browser opened at "/user/3/profile"
    And within the content
    When the user add on "inputInterest" with value "Enjoy something"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    When the browser opened at "/user/3/about"
    Then the user sees text "Enjoy something"

  Scenario: Brian Add Hobbies
    Given the user logged in as "brian"
    And the browser opened at "/user/3/profile"
    And within the content
    When the user add on "inputHobbies" with value "Judo"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    When the browser opened at "/user/3/about"
    Then the user sees text "Judo"