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

  Scenario: Admin add new friend to friend list from listing
    Given the user logged in as "admin"
    And the browser opened at "/friend"
    And within the sidebar
    And the user moves to items friend list
    When the user opens action menu
    And the user clicks on menu item "add"
    Given within the edit popup
    And the user opens the friend list
    And the user submits the form
    Then the user sees successful flash message

  Scenario: Admin add new friend to friend list from content
    Given the user logged in as "admin"
    And the browser opened at "/friend"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "edit_list"
    When the user select friend to friend list

  Scenario: Admin edit friend list
    Given the user logged in as "admin"
    And the browser opened at "/friend"
    And within the sidebar
    And the user moves to items friend list
    When the user opens action menu
    And the user clicks on menu item "edit_list"
    Given within the edit popup
    And the user add on "inputName" with value "IsAutoFriendList_Update"
    And the user submits the form
    Then the user sees successful flash message

  Scenario: Admin delete friend list
    Given the user logged in as "admin"
    And the browser opened at "/friend"
    And within the sidebar
    And the user moves to items friend list
    When the user opens action menu
    And  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message