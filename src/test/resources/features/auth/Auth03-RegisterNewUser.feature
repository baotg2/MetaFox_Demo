@registerNewUser
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
    Examples:
    |userName|emailValue|
    |brian   |brian@example.com|
    |terry   |terry@example.net|
    |luna    |luna@example.net|
    |katie   |katie@example.net|
