@MetaFox @group @brianActionOnPublicGroups
Feature:  Brain Process On Add Friend UnFriend

  @BrianAddNewGroupsWithEmptyValue
  Scenario: Brian Add New Group With Empty Value
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user action on input field "inputName" with value "Groups"
    And the user click on button "buttonSubmit"
    Then the user see "Category is a required field" displayed success
    Then the user see "Choose group privacy" displayed success
    
  @BrianAddNewGroups
  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user action on input field "inputName" with value "Groups"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 0 on dropdown list
    And the user add value on "select-reg_method" is "Public"
    And the user click on button "buttonSubmit"
    Then the user see title h2 "GroupTestAuto" is displayed

  @AnotherUserSearchGroup
  Scenario: Another User Search Group
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    And the user access this blog by "itemMedia" and process
    Then the user see title h2 "GroupTestAuto" is displayed

  @AnotherUserJoinGroupOnGroupDetail
  Scenario: Another User Join Group
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    And the user access this blog by "itemMedia" and process
    When the user want to "Join Group"
    Then the user see message "Joined successfully." displayed
    Then the user see button "Joined" is displayed

  @AnotherUserPostOnGroup
  Scenario: Another User Post On Group
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    And the user access this blog by "itemMedia" and process
    Then the user "whatsHappening" this item
    And the user add comment "AutoPostStatus" on blog
    And the user click on button "submit"
    Then the user see message "Shared successfully" displayed
    Then the user see "AutoPostStatus" displayed success

  @AnotherUserLeaveGroup
  Scenario: Another User Leave Group
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    And the user access this blog by "itemMedia" and process
    When the user want to click on button label "ActionMenu" and process
    And the user click on div "Leave group" and process
    Then the user see "Are you sure you want to leave this group?" displayed success
    And the user click on button "buttonSubmit"
    Then the user see button "Join Group" is displayed

  @AnotherUserJoinGroupOnSlotMain
  Scenario: Another User Join Group
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    When the user want to click on list button label "Join Group" and process
    Then the user see message "Joined successfully." displayed

  @BrianAddMemberShipQuestion
  Scenario: Brain Add MemberShip Question
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    And the user access this blog by "itemMedia" and process
    When the user see "actionMenu" and click on
    And the user "Manage" this item
    Then the user see "Enable Pending Mode" is displayed on user profile

