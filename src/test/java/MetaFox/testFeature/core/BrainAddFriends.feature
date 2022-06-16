@MetaFox @core  @brianActionAdd_UnFriend
Feature:  Brain Process On Add Friend UnFriend

  @BrainAddFriend
  Scenario: Brain Add Friend
    Given the user logged in as "brian"
    Then the user see search field "Search ..." and typing keys "admin"
    And the user want to click on "/admin"
    And the user want to "Add Friend"
    Then I want to click on "Logout"
    And the user logged in as "admin"
    Then the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    And the user want to "Accept"
    Then the user see button "Un Friend" is displayed

  @BrianUnFriend
  Scenario: Brian Un Friend
    Given the user logged in as "brian"
    Then the user see search field "Search ..." and typing keys "admin"
    And the user want to click on "/admin"
    And the user want to "Un Friend"
    And the user click on button "buttonSubmit"
    Then the user see message "Unfriend successfully." displayed
    Then the user see button "Add Friend" is displayed

  @BrianBlockUser
  Scenario: Brian Block User
    Given the user logged in as "brian"
    Then the user see search field "Search ..." and typing keys "test"
    And the user want to click on "/test"
    Then the user click on button "actionMenuButton"
    And the user action on "Block this user"
    And the user click on button "buttonSubmit"
    And the user want to "Unblock"
    Then the user see address page is "/settings/blocked"
    Then the user see message "User successfully unblocked." displayed