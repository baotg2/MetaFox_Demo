@MetaFox  @configOnACP @configOnACPSignUp
Feature: Config Settings On ACP Sign Up

  @AdminConfigRegistrationOnACP
  Scenario: Admin Config Register On ACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "Members"
    And the user clicks on "Browse"
    When the user want to "Registration Settings"
    And the user want to access "inputUserAllowUserRegistration"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrainVerifyFromSignUp
  Scenario: Brain Verify From Sign Up
    Then the user sees link text element "buttonRegister" is not displayed on screen
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "Members"
    And the user clicks on "Browse"
    When the user want to "Registration Settings"
    And the user want to access "inputUserAllowUserRegistration"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminConfigRe-enterPassword
  Scenario: Admin Config Re-enter Password
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "Members"
    And the user clicks on "Browse"
    When the user want to "Registration Settings"
    And the user clicks on input type check box "user.signup_repeat_password"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrainVerifyRe-enterPassword
  Scenario: Verify the re-enter password is displayed
    Given the user want to click on "register"
    Then the user clicks on input field "password_confirmation" with value "abc"

  @AdminConfigTermsPrivacyConfirmation
  Scenario: Admin Config Terms Privacy On ACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "Members"
    And the user clicks on "Browse"
    When the user want to "Registration Settings"
    When the user want to scroll to the end of page
    And the user want to access "inputUserNewUserTermsConfirmation"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @BrainVerifyTermConfirmation
  Scenario: Verify the TermConfirmation is displayed
    Given the user want to click on "register"
    Then the user don't see "fieldAgree"
    And the user clicks on element link text a "Already Had an Account?"
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user clicks on "Members"
    And the user clicks on "Browse"
    When the user want to "Registration Settings"
    When the user want to scroll to the end of page
    And the user want to access "inputUserNewUserTermsConfirmation"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message