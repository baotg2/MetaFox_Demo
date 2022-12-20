@registerNewUser @previewSite
Feature: Verify Register New User Successfully

  Scenario Outline: Register New User Successfully
    Given the browser opened at "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user fills userName
    And the user add on "inputEmail" with value "<emailValue>"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on check box "checkbox"
    When the user submits the form
    Examples:
      |emailValue|
      |test1@phpfox.com|
      |test2@phpfox.com|
      |test3@phpfox.com|
      |test4@phpfox.com|
      |test5@phpfox.com|