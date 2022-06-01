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
    Then the user see title "Edit profile" is displayed
    And the user add value on "selectCountryState" is "<country_state>"
    And the user action on input field "inputPostalCode" with value "<postalCode>"
    Then the user click on button "buttonSubmit"
    Then the user see message "Information updated successfully" displayed
    Examples:
      |country_state|postalCode|
      |Vietnam     |7000000    |
      |United States|1         |

