@MetaFox @group @brianActionOnSecretGroups
Feature:  Brain Process On Secret Groups

  @BrianAddNewSecretGroups
  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user action on input field "inputName" with value "TestAutoSecretGroup"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add value on "select-reg_method" is "Secret"
    And the user click on button "buttonSubmit"
    Then the user see title h2 "TestAutoSecretGroup" is displayed

  @AnotherUserSearchSecretGroup
  Scenario: Another User Search Group
    Given the user logged in as "test"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "TestAutoSecretGroup"
    Then the user see "No groups found" on left menu

  @BrianInviteAnotherUserJoinSecretGroup
  Scenario: Brian Invite Another User Join Secret Group
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "TestAutoSecretGroup"
    And the user access this blog by "itemMedia" and process
    When the user see "actionMenu" and click on
    And the user "Invite Friends" this item
    #Then the user add value on "searchBox" is "test"
    And the user tag first friend on list tag
    Then the user click on button "buttonDone"
    Then the user see message "Invitation(s) successfully sent." displayed
    And I want to click on "Logout"
    Given the user logged in as "test"
    Then the user "new_notification" this item
    Then the user click on notification "TestAutoSecretGroup" and process
    When the user "Accept Invite" on invite
    Then the user see message "Joined successfully." displayed
    Then the user see button "Joined" is displayed

  @AnotherUserLeaveSecretGroup
  Scenario: Another user leave secret group
    Given the user logged in as "test"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "TestAutoSecretGroup"
    And the user access this blog by "itemMedia" and process
    When the user want to click on button label "ActionMenu" and process
    And the user click on div "Leave group" and process
    Then the user see "Are you sure you want to leave this group?" displayed success
    And the user click on button "buttonSubmit"

  @BrianDeleteSecretGroup
  Scenario: Brain delete secret group
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "TestAutoSecretGroup"
    And the user access this blog by "itemMedia" and process
    When the user want to click on button label "ActionMenu" and process
    And the user click on div "Delete" and process
    Then the user see "Are you sure you want to delete this item permanently?" displayed success
    And the user click on button "buttonSubmit"
    Then the user see message "Successfully deleted the group" displayed