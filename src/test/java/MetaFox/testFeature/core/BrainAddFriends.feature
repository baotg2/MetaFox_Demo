@MetaFox @core  @brianActionAdd_UnFriend
Feature:  Brain Process On Add Friend UnFriend

  @BrianBlockUser
  Scenario: Brian Block User
    Given the user logged in as "brian"
    Then the user see search field "Search" and typing keys "test"
    And the user action on "People"
    And the user want to click on "/test"
    Then the user click on button "actionMenuButton"
    And the user action on "Block this user"
    And the user click on button "buttonSubmit"
    And the user want to "Unblock"
    Then the user see address page is "/settings/blocked"
    Then the user see message "User successfully unblocked." displayed