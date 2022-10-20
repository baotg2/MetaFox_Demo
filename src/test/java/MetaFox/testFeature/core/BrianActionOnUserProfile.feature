@MetaFox @core @brianProcessOnUserProfile
Feature: Brain Process On User Profile

  @BrianAccessUserProfile
  Scenario: Brain Access User Profile
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user see title "About Me" is displayed
    Then the user see  tab "Friends" displayed success
    Then the user see  tab "Photos" displayed success
    And the user want to access items "friend" on user profile
    And the user want to access items "about" on user profile
    And the user want to access items "photo" on user profile
    And the user want to access items "video" on user profile

  @BrianEditProfile
  Scenario Outline: Brian Edit Profile
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user see title "Edit Profile" is displayed
    And the user add value on "selectCountryState" is "<country_state>"
    Then the user click on button "buttonSubmit"
    Then the user see message "Information updated successfully" displayed
    Examples:
      |country_state|
      |Vietnam     |
      |United States|

  @BrianAddBio
  Scenario: Brian Add Bio
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user see title "Edit Profile" is displayed
    Then the user action on input field "bio" with value "Everyone else was taken so this is me"
    Then the user click on button "buttonSubmit"
    Then the user see message "Information updated successfully" displayed
    And the user want to access "userAvatar"
    And the user want to access items "about" on user profile
    Then the user see "Everyone else was taken so this is me" is displayed on user profile

  @BrianAddAboutMe
  Scenario: Brian Add About Me
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user see title "Edit Profile" is displayed
    Then the user add value "Designer and Photographer" on textArea "inputAboutMe"
    And the user click on button "buttonSubmit"
    Then the user see message "Information updated successfully" displayed
    And the user want to access "userAvatar"
    And the user want to access items "about" on user profile
    Then the user see "Designer and Photographer" is displayed on user profile

  @BrianAddInterested
  Scenario: Brian Add Interested
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user see title "Edit Profile" is displayed
    Then the user add value "Enjoy something" on textArea "inputInterest"
    And the user click on button "buttonSubmit"
    Then the user see message "Information updated successfully" displayed
    And the user want to access "userAvatar"
    And the user want to access items "about" on user profile
    Then the user see "Enjoy something" is displayed on user profile

  @BrianAddHobbies
  Scenario: Brian Add Hobbies
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    Then the user see title "Edit Profile" is displayed
    Then the user add value "Judo" on textArea "inputHobbies"
    And the user click on button "buttonSubmit"
    Then the user see message "Information updated successfully" displayed
    And the user want to access "userAvatar"
    And the user want to access items "about" on user profile
    Then the user see "Judo" is displayed on user profile

  @BrianEditBirthDay
  Scenario: Brian Edit Birth Day
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user want to "Edit Profile"
    And the user add value "" on element "0"
    And the user click on button "buttonSubmit"
    Then the user see message "Information updated successfully" displayed