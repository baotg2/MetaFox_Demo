@registerNewUser @previewSite @NonTearDownData
Feature: Verify Register New User Successfully

  Scenario Outline: Register New User Default
    Given the user clicks on button "buttonRegister"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user add on "inputUserName" with value "<userName>"
    And the user add on "inputEmail" with value "<emailValue>"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on check box "checkbox"
    When the user submits the form
    Then the user sees items "Welcome Back" matches on site
    Examples:
    |userName|emailValue|
    |brian1   |brian1@example.com|
    |terry1   |terry1@example.net|
    |krixi1   |luna1@example.net|
    |katie1   |katie1@example.net|
    |test1    |test1@example.net|