@MetaFox @Author @VisitorProcessSignUp
Feature: Verify Visitor Process on Sign Up

  @VisitorProcessOnMenuSide
  Scenario: Verify Visitor Process on Menu Side
    Given the user click on div "Friends" and process
    And the user see "Welcome Back" is displayed
    And back to previous page
    And the user click on div "Members" and process
    And the user see title "Members" is displayed
    And the user back to "linkLogo" page
#    And the user click on div "blogs" and process
#    And the user see "Popular Blogs" on left menu
#    And the user back to "linkLogo" page
    And the user click on div "Photos" and process
    And the user see title "Popular Photos" is displayed
    And the user back to "linkLogo" page
    And the user click on div "Polls" and process
    And the user see title "Popular Polls" is displayed

  @VisitorRegisterNewAccountWithErrorMsgInvalidEmail
  Scenario Outline: Visitor Process register new account With Error Msg Invalid Email
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user action on input field "inputFirstName" with value "<firstName>"
    And the user action on input field "inputLastName" with value "<lastName>"
    And the user action on input field "inputFullName" with value "<fullName>"
    And the user input info sign up "Email Address" with value "<emailValue>"
    Then the user see error message "Email Address must be a valid email" is displayed
    Examples:
    |firstName |lastName|fullName|emailValue
    |testAuto1 | testAuto1|testAuto1|adv@abc
    |testAuto2 | testAuto2|testAuto2 |adv@abc

  @VisitorRegisterNewAccountWithErrorMsgExistEmail
  Scenario: Visitor Process register new account With Error Msg Exist Email
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user action on input field "inputFirstName" with value "Test exist email"
    And the user action on input field "inputLastName" with value "Test exist email"
    And the user action on input field "inputFullName" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example.com"
    And the user input info sign up "Choose an Username" with value "TestAutoExistEmail"
    And the user input info password sign up "mui-16" with value "123456"
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "The email has already been taken." is displayed

  @VisitorSignUpWithEmptyValue
  Scenario: Visitor SignUp With Empty Value
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user click on button "buttonSubmit"
    Then the user see error message "Last Name is a required field" is displayed
    Then the user see error message "First Name is a required field" is displayed
    Then the user see error message "Full Name is a required field" is displayed
    Then the user see error message "Choose an Username" is displayed
    Then the user see error message "Email is a required field" is displayed
    Then the user see error message "Enter Password" is displayed

  @VisitorBreakSignUpAction
  Scenario: Visitor Break SignUp Action
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user back to "buttonUndefined" page
    Then the user see "Welcome Back" is displayed

  @VisitorRegisterNewAccountWithExistUserName
  Scenario: Visitor Process register new account With Exist User Name
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user action on input field "inputFirstName" with value "N"
    And the user action on input field "inputLastName" with value "L"
    And the user action on input field "inputFullName" with value "V"
    And the user input info sign up "Email Address" with value "nlv@phpfox.com"
    And the user input info sign up "Choose an Username" with value "Ivan1"
    And the user input info password sign up "mui-16" with value "123456"
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "The user name has already been taken." is displayed

  @VisitorRegisterNewAccountWithShortPassword
  Scenario: Visitor Process register new account With Short Password
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user action on input field "inputFirstName" with value "Test exist email"
    And the user action on input field "inputLastName" with value "Test exist email"
    And the user action on input field "inputFullName" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example123.com"
    And the user input info sign up "Choose an Username" with value "TestAuto1"
    And the user input info password sign up "mui-16" with value "cv"
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "Your password must be at least 6 characters long. Please try another." is displayed

  @VisitorRegisterNewAccountWithSpaceOnPasswordField
  Scenario: Visitor Process register new account With Space On Password Field
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user action on input field "inputFirstName" with value "Test exist email"
    And the user action on input field "inputLastName" with value "Test exist email"
    And the user action on input field "inputFullName" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example123.com"
    And the user input info sign up "Choose an Username" with value "TestAuto1"
    And the user input info password sign up "mui-16" with value " "
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "The password is required." is displayed