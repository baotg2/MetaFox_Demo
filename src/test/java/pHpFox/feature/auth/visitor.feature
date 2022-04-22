@pHpV5 @VisitorProcessHomePage
Feature: Verify Visitor Process on HomePage
@VisitorProcessOnMenuSide
Scenario: Verify Visitor Process on Menu Side
  Given the user click on div "friends" and process
  And the user see "Welcome Back" is displayed
  And back to previous page
  And the user click on div "blogs" and process
  And the user see "No Blogs" is displayed when not yet login
  And the user back to home page
  And the user click on div "videos" and process
  And the user see title "Popular Videos" is displayed
  And the user back to home page
  And the user click on div "photos" and process
  And the user see title "Popular Photos" is displayed
  And the user back to home page
  And the user click on div "poll" and process
  And the user see title "Featured Polls" is displayed

@VisitorRegisterNewAccount
Scenario Outline: Visitor Process register new account
  Given the user click on div "fieldRegister" and process
  Then the user see title "Create account" is displayed
  And the user action on input field "inputFirstName" with value "<firstName>"
  And the user action on input field "inputLastName" with value "<lastName>"
  And the user action on input field "inputFullName" with value "<fullName>"
  And the user action on input field "inputFullName" with value "<emailValue>"
  Then the user see error message "<errorMsg>"is displayed
  Examples:
  | firstName | lastName| fullName| emailValue | errorMsg
  |testAuto1  | testAuto1| testAuto1| abcbsfds | Email Address must be a valid email
  |testAuto2  | testAuto2|testAuto2 | adasdjmscdvdvd |Email Address must be a valid email