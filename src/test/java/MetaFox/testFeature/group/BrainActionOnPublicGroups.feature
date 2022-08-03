@MetaFox @group @brianActionOnPublicGroups
Feature:  Brain Process On Public Groups

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
    When the user want to select category at 1 on dropdown list "select-type_id"
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
    And the user want to click on title "itemTitle" and process
    When the user want to "Join Group"
    Then the user see message "Joined successfully." displayed
    Then the user see button "Joined" is displayed

  @AnotherUserPostOnGroup
  Scenario: Another User Post On Group
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    And the user want to click on title "itemTitle" and process
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
    And the user want to click on title "itemTitle" and process
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
    And the user want to click on title "itemTitle" and process
    When the user see "actionMenu" and click on
    And the user "Manage" this item
    And the user action on "Membership Questions"
    Then the user see "Answer the questions" is displayed on user profile
    When the user click on check box "checkbox"
    And the user want to "Add"
    And the user see "Add Question" is displayed on user profile
    And the user add value on "question" is "Question is required"
    And the user select type "Written Answer" on "type_id"
    Then the user click on button "buttonSubmit"
    And I want to click on "Logout"
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    When the user want to click on list button label "Join Group" and process
    Then the user see "Answer the Question" is displayed on user profile
    And the user action on input field "inputQuestionQuestion7" with value "TestAnwser"
    Then the user click on button "buttonSubmit"
    Then the user see message "Joined successfully." displayed

  @BrianAddPendingPost
  Scenario: Brain Add Pending Post
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    And the user want to click on title "itemTitle" and process
    When the user see "actionMenu" and click on
    And the user "Manage" this item
    And the user action on "Pending Posts"
    Then the user see "Enable Pending Mode" is displayed on user profile
    When the user click on check box "checkbox"
    And I want to click on "Logout"
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "Groups"
    And the user access this blog by "itemMedia" and process
    Then the user "whatsHappening" this item
    And the user add comment "AutoPostStatus" on blog
    And the user click on button "submit"
    Then the user see message "Successfully posted. Please waiting for approve" displayed
    And I want to click on "Logout"
    Given the user logged in as "brian"
    Then the user "new_notification" this item
    Then the user click on notification " is waiting for your approval." and process
    Then the user see button "Joined" is displayed