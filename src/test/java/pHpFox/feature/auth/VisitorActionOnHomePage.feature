@MetaFox  @VisitorProcessHomePage
Feature: Verify Visitor Process on HomePage

#  @VisitorProcessOnMenuSide
#  Scenario: Verify Visitor Process on Menu Side
#    Given the user click on div "friends" and process
#    And the user see "Welcome Back" is displayed
#    And back to previous page
#    And the user click on div "blogs" and process
#    And the user see "No Blogs" is displayed when not yet login
#    And the user back to "linkLogo" page
#    And the user click on div "videos" and process
#    And the user see title "Popular Videos" is displayed
#    And the user back to "linkLogo" page
#    And the user click on div "photos" and process
#    And the user see title "Popular Photos" is displayed
#    And the user back to "linkLogo" page
#    And the user click on div "poll" and process
#    And the user see title "Featured Polls" is displayed

  @VisitorRegisterNewAccountWithErrorMsg
  Scenario Outline: Visitor Process register new account With Error Msg
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user action on input field "inputFirstName" with value "<firstName>"
    And the user action on input field "inputLastName" with value "<lastName>"
    And the user action on input field "inputFullName" with value "<fullName>"
    And the user input info sign up "Email Address" with value "<emailValue>"
    Then the user see error message "Email Address must be a valid email" is displayed
    Examples:
    | firstName | lastName| fullName| emailValue
    |testAuto1  | testAuto1|testAuto1| adv@abc
    |testAuto2  | testAuto2|testAuto2 | adv@abc

  @VisitorRegisterNewAccountWithErrorMsgExistEmail
  Scenario: Visitor Process register new account With Error Msg Exist Email
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user action on input field "inputFirstName" with value "Test exist email"
    And the user action on input field "inputLastName" with value "Test exist email"
    And the user action on input field "inputFullName" with value "Test exist email"
    And the user input info sign up "Email Address" with value "brian@example.com"
    And the user input info sign up "Choose an Username" with value "Test Auto1"
    And the user input info password sign up "mui-12" with value "123456"
    And the user click on check box "checkbox"
    And the user click on button "buttonSubmit"
    Then the user see error message "The email has already been taken." is displayed

  @VisitorSignUpWithEmptyValue
  Scenario: Visitor SignUp With Empty Value
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user click on button "buttonSubmit"
    Then the user see error message "Last name is a required field" is displayed
    Then the user see error message "First name is a required field" is displayed
    Then the user see error message "Full name is a required field" is displayed
    Then the user see error message "Choose an Username" is displayed
    Then the user see error message "Email is a required field" is displayed
    Then the user see error message "Enter Password" is displayed

  @VisitorBreakSignUpAction
  Scenario: Visitor Break SignUp Action
    Given the user click on div "fieldRegister" and process
    Then the user see title "Create account" is displayed
    And the user back to "buttonUndefined" page
    Then the user see "Welcome Back" is displayed
