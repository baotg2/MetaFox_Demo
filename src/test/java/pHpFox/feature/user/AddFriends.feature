@pHpV5 @blogFunction_Admin
Feature:  Brain Process On Add Friend UnFriend

  @BrainAddFriend
  Scenario: Brain Add Friend
    Given the user logged in as "brian"
    Then the user see search field "Search ..." and typing keys "admin"
    And the user want to click on "/admin"
    And the user want to "Add Friend"
    Then I want to logout and change another user
    And the user logged in as "admin"
    And the user "new_friend_request" this item
    And the user want to "Accept"
    Then the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see button "Un Friend" is displayed


    @BrianUnFriend
    Scenario: Brian Un Friend
    Given the user logged in as "brian"
    Then the user see search field "Search ..." and typing keys "admin"
    And the user want to click on "/admin"
    And the user want to "Un Friend"
    And the user click on button "buttonSubmit"