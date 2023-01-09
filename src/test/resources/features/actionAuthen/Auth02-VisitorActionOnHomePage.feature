@register @previewSite
Feature: Verify Visitor Process on Sign Up

  Scenario: Visitor Process register new account With Error Msg Invalid Email
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user fills userName
    And the user add on "inputEmail" with value "emailValue"
    When the user submits the form
    Then the user sees error message "Email Address must be a valid email"

  Scenario: Visitor Process register new account With Error Msg Exist Email
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user fills userName
    And the user add on "inputEmail" with value "brian1@example.com"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on "inputAgree"
    When the user submits the form
    Then the user sees error message "The email has already been taken."

  Scenario: Visitor SignUp With Empty Value
    Given the user clicks on link "/register"
    And within the content
    And the user submits the form
    Then the user sees error message "First Name is required."
    Then the user sees error message "Last Name is required."
    Then the user sees error message "Full Name is required."
    Then the user sees error message "Choose a Username"
    Then the user sees error message "Email address is required."
    Then the user sees error message "Enter Password"

  Scenario: Visitor Break SignUp Action
    Given the user clicks on link "/register"
    And within the header
    When the user clicks on link "/login"
    And within the content
    Then the user sees text "Welcome Back"

  Scenario: Visitor Process register new account With Exist User Name
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user add on "inputEmail" with value "testAuto@example.com"
    When the user add on "inputUserName" with value "admin"
    And the user add on "inputPassword" with value "123456789"
    And the user clicks on "inputAgree"
    And the user clicks on button "buttonSubmit"
    Then the user sees error message "The user name has already been taken."

  Scenario: Visitor Process register new account With Short Password
    Given the user clicks on link "/register"
    And within the content
    Given the user fills firstName
    And the user fills lastName
    And the user fills fullName
    And the user input info sign up "Email Address" with value "brian@example123.com"
    And the user fills userName
    And the user clicks on input field "password" with value " "
    And the user clicks on "inputAgree"
    And the user clicks on button "buttonSubmit"
    Then the user sees error message "Your password must be at least 8 characters long and at most 15 characters long. Please try another."