@registerNewUser @previewSite @NonTearDownData
Feature: Verify Register New User Successfully

  Scenario Outline: Register New User Default
    Given the browser opened at "/register"
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
    |brian   |brian1@example.com|
    |terry  |terry1@example.net|
    |krixi    |luna1@example.net|
    |katie   |katie1@example.net|