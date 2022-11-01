@group @brianActionOnSecretGroups
Feature:  Brain Process On Secret Groups

  @BrianAddNewSecretGroups
  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user clicks on input field "name" with value "TestAutoSecretGroup"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add value on "select-reg_method" is "Secret"
    And the user clicks on button "buttonSubmit"
    Then the user see title h2 "TestAutoSecretGroup" is displayed

  @AnotherUserSearchSecretGroup
  Scenario: Another User Search Group
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "TestAutoSecretGroup"
    Then the user see "No groups are found." on left menu

  @BrianInviteAnotherUserJoinSecretGroup
  Scenario: Brian Invite Another User Join Secret Group
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "TestAutoSecretGroup"
    And the user want to click on title "itemTitle" and process
    When the user clicks on "Invite"
    And the user clicks on "Invite Friends"
    #Then the user add value on "searchBox" is "test"
    Then the user "itemUndefined" this item
    Then the user clicks on button "buttonDone"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Given the user logged in as "test"
    Then the user "new_notification" this item
    Then the user clicks on notification "TestAutoSecretGroup" and process
    When the user "Accept Invite" on invite
    Then the user sees successful flash message
    Then the user see button "Joined" is displayed

  @AnotherUserLeaveSecretGroup
  Scenario: Another user leave secret group
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "TestAutoSecretGroup"
    And the user want to click on title "itemTitle" and process
    When the user see "actionMenu" and click on
    And the user clicks on div "leave_group" and process
    Then the user see "Are you sure you want to leave this group?" displayed success
    And the user clicks on button "buttonSubmit"

  @BrianDeleteSecretGroup
  Scenario: Brain delete secret group
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "TestAutoSecretGroup"
    And the user want to click on title "itemTitle" and process
    When the user want to click on button label "Action Menu" and process
    When the user clicks on "Delete"
    Then the user see "Are you sure you want to delete this group permanently?" displayed success
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message