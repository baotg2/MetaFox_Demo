@MetaFox @group @brianActionOnPublicGroups
Feature:  Brain Process On Public Groups

  @BrianAddNewGroupsWithEmptyValue
  Scenario: Brian Add New Group With Empty Value
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Group Name is required."
    Then the user sees text "Group Privacy is required."
    
  @BrianAddNewGroups
  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user clicks on input field "name" with value "Groups"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Then Then the user sees text "GroupTestAuto"

  @AnotherUserSearchGroup
  Scenario: Another User Search Group
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    Then Then the user sees text "GroupTestAuto"

  @AnotherUserJoinGroupOnGroupDetail
  Scenario: Another User Join Group
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    When the user want to "Join Group"
    Then the user sees successful flash message
    Then the user seesbutton "Joined"

  @AnotherUserPostOnGroup
  Scenario: Another User Post On Group
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    Then the user "whatsHappening" this item
    And the user add comment "AutoPostStatus1" on blog
    And the user clicks on button "submit"
    Then the user sees text "AutoPostStatus1"

  @AnotherUserReactionOnGroups
  Scenario: Brain Reaction Group
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    And the user clicks on button "reactionButton"

  @AnotherUserLeaveGroup
  Scenario: Another User Leave Group
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    When the user sees text "actionMenu" and click on
    And the user clicks on div "leave_group" and process
    Then the user sees text "Are you sure you want to leave this group?"
    And the user clicks on button "buttonSubmit"
    Then the user seesbutton "Join Group"

  @AnotherUserJoinGroupOnSlotMain
  Scenario: Another User Join Group
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    When the user clicks on the "Join Group" on page
    Then the user sees successful flash message

  @BrianAddMemberShipQuestion
  Scenario: Brain Add MemberShip Question
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    When the user sees text "actionMenu" and click on
    And the user "manage" this item
    And the user clicks on "Membership Questions"
    When the user clicks on check box "checkbox"
    And the user want to "Add"
    And the user sees text "Add Question "
    And the user add value on "question" is "Question is required"
    And the user select type "Written Answer" on "type_id"
    Then the user clicks on button "buttonSubmit"
    And I want to click on "Logout"
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    When the user clicks on the "Join Group" on page
    Then the user clicks on button "buttonSubmit"

  @BrianAddPendingPost
  Scenario: Brain Add Pending Post
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    When the user sees text "actionMenu" and click on
    And the user "manage" this item
    And the user clicks on "Pending Posts"
    Then the user sees text "Enable Pending Mode "
    When the user clicks on check box "checkbox"
    And the user clicks on "Membership Questions"
    When the user want to "Delete"
    Then the user sees text "Are you sure you want to permanently delete this question?"
    And the user want to "OK"
    And I want to click on "Logout"
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    Then the user "whatsHappening" this item
    And the user add comment "AutoPostStatus" on blog
    And the user clicks on button "submit"
    And I want to click on "Logout"
    Given the user logged in as "brian"
    Then the user "new_notification" this item
    Then the user clicks on notification " is waiting for your approval." and process
    Then the user "Approve" on invite

  @BrianDeletePublicGroups
  Scenario: Brain Delete Public Groups
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    When the user sees text "actionMenu" and click on
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to delete this group permanently?"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message