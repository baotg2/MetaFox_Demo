@action_friend @admin @wip
Feature: Brain Action On Friend App

  Scenario: Admin add new friend list
    Given the user logged in as "admin"
    And the browser opened at "/friend"
    And within the sidebar
    When the user clicks on button "Add New List"
    Given within the edit popup
    And the user add on "inputName" with value "IsAutoFriendList"
    And the user submits the form
    Then the user sees successful flash message
    Given within the sidebar
    Then the user sees items "IsAutoFriendList" matches on site