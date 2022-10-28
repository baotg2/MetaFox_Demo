@MetaFox  @configOnACP @configOnACPSignUp
Feature: Config Settings On ACP Sign Up

  @AdminConfigRegistrationOnACP
  Scenario: Admin Config Register On ACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Browse"
    When the user want to "Registration Settings"
    And the user want to access "inputUserAllowUserRegistration"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrainVerifyFromSignUp
  Scenario: Brain Verify From Sign Up
    Then the user see link text element "buttonRegister" is not displayed on screen
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Browse"
    When the user want to "Registration Settings"
    And the user want to access "inputUserAllowUserRegistration"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @AdminConfigRe-enterPassword
  Scenario: Admin Config Re-enter Password
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Browse"
    When the user want to "Registration Settings"
    And the user click on input type check box "user.signup_repeat_password"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrainVerifyRe-enterPassword
  Scenario: Verify the re-enter password is displayed
    Given the user want to click on "register"
    Then the user action on input field "password_confirmation" with value "abc"

  @AdminConfigTermsPrivacyConfirmation
  Scenario: Admin Config Terms Privacy On ACP
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Browse"
    When the user want to "Registration Settings"
    When the user want to scroll to the end of page
    And the user want to access "inputUserNewUserTermsConfirmation"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed

  @BrainVerifyTermConfirmation
  Scenario: Verify the TermConfirmation is displayed
    Given the user want to click on "register"
    Then the user don't see "fieldAgree" is displayed
    And the user click on element link text a "Already Had an Account?"
    Given the user logged in as "admin"
    When the browser will get Administrator URL
    And the user action on "Members"
    And the user action on "Browse"
    When the user want to "Registration Settings"
    When the user want to scroll to the end of page
    And the user want to access "inputUserNewUserTermsConfirmation"
    When the user click on button "buttonSubmit"
    Then the user see message "Save Changed Successfully" displayed