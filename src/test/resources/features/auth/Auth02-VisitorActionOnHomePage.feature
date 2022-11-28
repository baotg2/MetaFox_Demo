@page-Register
Feature: Verify Visitor Process on Sign Up

  Scenario Outline: Visitor Process register new account With Error Msg Invalid Email
    Given the browser opened at "/"
    Given the user clicks on link "register"
    And the user clicks on input field "first_name" with value "<firstName>"
    And the user clicks on input field "last_name" with value "<lastName>"
    And the user clicks on input field "full_name" with value "<fullName>"
    And the user input info sign up "Email Address" with value "<emailValue>"
    Then the user sees error message "Email Address must be a valid email"
    Examples:
    |firstName |lastName|fullName|emailValue
    |testAuto1 | testAuto1|testAuto1|adv@abc

  Scenario: Visitor Process register new account With Error Msg Exist Email
    Given the browser opened at "/"
    Given the user clicks on link "register"
    And the user clicks on input field "first_name" with value "Test exist email"
    And the user clicks on input field "last_name" with value "Test exist email"
    And the user clicks on input field "full_name" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example.com"
    And the user input info sign up "Choose a Username" with value "TestAutoExistEmail"
    And the user clicks on input field "password" with value "123456789"
    And the user clicks on check box "checkbox"
    And the user submits the form
    Then the user sees error message "The email has already been taken."

  Scenario: Visitor SignUp With Empty Value
    Given the browser opened at "/"
    Given the user clicks on link "register"
    And the user clicks on button "buttonSubmit"
    Then the user sees error message "First Name is required."
    Then the user sees error message "Last Name is required."
    Then the user sees error message "Full Name is required."
    Then the user sees error message "Choose a Username"
    Then the user sees error message "Email address is required."
    Then the user sees error message "Enter Password"

  Scenario: Visitor Break SignUp Action
    Given the browser opened at "/"
    Given the user clicks on link "register"
    And the user clicks on element link text a "Already have an account?"
    Then the user sees text "Welcome Back"

  Scenario: Visitor Process register new account With Exist User Name
    Given the browser opened at "/"
    Given the user clicks on link "register"
    And the user clicks on input field "first_name" with value "N"
    And the user clicks on input field "last_name" with value "L"
    And the user clicks on input field "full_name" with value "V"
    And the user input info sign up "Email Address" with value "nlv@phpfox.com"
    And the user input info sign up "Choose a Username" with value "admin"
    And the user clicks on input field "password" with value "123456789"
    And the user clicks on check box "checkbox"
    And the user clicks on button "buttonSubmit"
    Then the user sees error message "The user name has already been taken."

  Scenario: Visitor Process register new account With Short Password
    Given the browser opened at "/"
    Given the user clicks on link "register"
    And the user clicks on input field "first_name" with value "Test exist email"
    And the user clicks on input field "last_name" with value "Test exist email"
    And the user clicks on input field "full_name" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example123.com"
    And the user input info sign up "Choose a Username" with value "TestAuto1"
    And the user clicks on input field "password" with value "cv"
    And the user clicks on check box "checkbox"
    And the user clicks on button "buttonSubmit"
    Then the user sees error message "Your password must be at least 8 characters long. Please try another."