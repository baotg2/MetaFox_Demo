@MetaFox @Author @VisitorProcessSignUp
Feature: Verify Visitor Process on Sign Up

  @VisitorRegisterNewAccountWithErrorMsgInvalidEmail
  Scenario Outline: Visitor Process register new account With Error Msg Invalid Email
    Given the user want to click on "register"
    And the user action on input field "first_name" with value "<firstName>"
    And the user action on input field "last_name" with value "<lastName>"
    And the user action on input field "full_name" with value "<fullName>"
    And the user input info sign up "Email Address" with value "<emailValue>"
    Then the user see error message "Email Address must be a valid email" is displayed
    Examples:
    |firstName |lastName|fullName|emailValue
    |testAuto1 | testAuto1|testAuto1|adv@abc

  @VisitorRegisterNewAccountWithErrorMsgExistEmail
  Scenario: Visitor Process register new account With Error Msg Exist Email
    Given the user want to click on "register"
    And the user action on input field "first_name" with value "Test exist email"
    And the user action on input field "last_name" with value "Test exist email"
    And the user action on input field "full_name" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example.com"
    And the user input info sign up "Choose a Username" with value "TestAutoExistEmail"
    And the user action on input field "password" with value "123456"
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "The email has already been taken." is displayed

  @VisitorSignUpWithEmptyValue
  Scenario: Visitor SignUp With Empty Value
    Given the user want to click on "register"
    And the user click on button "buttonSubmit"
    Then the user see error message "First Name is required." is displayed
    Then the user see error message "Last Name is required." is displayed
    Then the user see error message "Full Name is required." is displayed
    Then the user see error message "Choose a Username" is displayed
    Then the user see error message "Email address is required." is displayed
    Then the user see error message "Enter Password" is displayed

  @VisitorBreakSignUpAction
  Scenario: Visitor Break SignUp Action
    Given the user want to click on "register"
    And the user click on element link text a "Already Had an Account?"
    Then the user see "Welcome Back" is displayed

  @VisitorRegisterNewAccountWithExistUserName
  Scenario: Visitor Process register new account With Exist User Name
    Given the user want to click on "register"
    And the user action on input field "first_name" with value "N"
    And the user action on input field "last_name" with value "L"
    And the user action on input field "full_name" with value "V"
    And the user input info sign up "Email Address" with value "nlv@phpfox.com"
    And the user input info sign up "Choose a Username" with value "admin"
    And the user action on input field "password" with value "123456"
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "The user name has already been taken." is displayed

  @VisitorRegisterNewAccountWithShortPassword
  Scenario: Visitor Process register new account With Short Password
    Given the user want to click on "register"
    And the user action on input field "first_name" with value "Test exist email"
    And the user action on input field "last_name" with value "Test exist email"
    And the user action on input field "full_name" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example123.com"
    And the user input info sign up "Choose a Username" with value "TestAuto1"
    And the user action on input field "password" with value "cv"
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "Your password must be at least 6 characters long. Please try another." is displayed

  @VisitorRegisterNewAccountWithSpaceOnPasswordField
  Scenario: Visitor Process register new account With Space On Password Field
    Given the user want to click on "register"
    And the user action on input field "first_name" with value "Test exist email"
    And the user action on input field "last_name" with value "Test exist email"
    And the user action on input field "full_name" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example123.com"
    And the user input info sign up "Choose a Username" with value "TestAuto1"
    And the user action on input field "password" with value " "
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "The password is required." is displayed