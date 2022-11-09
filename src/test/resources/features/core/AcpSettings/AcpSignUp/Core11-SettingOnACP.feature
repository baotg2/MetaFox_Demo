@admincp @signUpSetting
Feature: Config Settings On ACP Sign Up

  Scenario: Admin Config Register On ACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/user/setting/registration"
    And within the content
    And the user turn off setting "inputUserAllowUserRegistration"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brain Verify From Sign Up
    Then the user see link text element "buttonRegister" is not displayed on screen
    Given the user logged in as "admin"
    And the browser opened at "/admincp/user/setting/registration"
    And within the content
    And the user turn off setting "inputUserAllowUserRegistration"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Admin Config Re-enter Password
    Given the user logged in as "admin"
    And the browser opened at "/admincp/user/setting/registration"
    And within the content
    And the user turn off setting "inputUserSignupRepeatPassword"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Verify the re-enter password is displayed
    Given the browser opened at "/register"
    Then the user clicks on input field "password_confirmation" with value "abc"

  Scenario: Admin Config Terms Privacy On ACP
    Given the user logged in as "admin"
    And the browser opened at "/admincp/user/setting/registration"
    When the user want to scroll to the end of page
    And within the content
    And the user turn off setting "inputUserNewUserTermsConfirmation"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Verify the TermConfirmation is displayed
    Given the browser opened at "/register"
    Then the user don't see "fieldAgree"