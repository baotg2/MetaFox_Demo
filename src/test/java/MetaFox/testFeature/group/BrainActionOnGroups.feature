@MetaFox @group @brianActionOnGroups
Feature:  Brain Process On Add Friend UnFriend

  @BrianAddNewGroups
  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    Then the user click on div "more" and process
    Then the browser opened at item "groups" and tab "/groups/add"
    And the user action on input field "inputName" with value "Groups"
    And the user add value on "select-type_id" is "Song"