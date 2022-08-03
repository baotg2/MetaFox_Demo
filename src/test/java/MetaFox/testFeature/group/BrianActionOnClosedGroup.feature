@MetaFox @group @brianActionOnClosedGroup
Feature:  Brain Process On Closed Groups

  @BrianAddNewClosedGroups
  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    Then the user action on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user action on input field "inputName" with value "TestAutoClosedGroup"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add value on "select-reg_method" is "Closed"
    And the user click on button "buttonSubmit"
    Then the user see title h2 "TestAutoClosedGroup" is displayed

  @AnotherUserSearchClosedGroup
  Scenario: Another User Search Group
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "TestAutoClosedGroup"
    And the user want to click on title "itemTitle" and process
    Then the user see title h2 "TestAutoClosedGroup" is displayed

  @BrianApproveAnotherUserJoinClosedGroup
  Scenario: Brian Approve Another User Join Closed Group
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "TestAutoClosedGroup"
    And the user want to click on title "itemTitle" and process
    When the user want to "Join Group"
    Then the user see button "Pending Request" is displayed
    And I want to click on "Logout"
    Given the user logged in as "brian"
    When the user "new_notification" this item
    Then the user click on notification "TestAutoClosedGroup received a joining pending request" and process
    And the user want to click on button label "PENDING REQUESTS" and process
    When the user want to edit "itemview group_request"
    Then the user see message "Add group member successfully." displayed
    Then I want to click on "Logout"
    Given the user logged in as "terry"
    Then the user "new_notification" this item
    And the user click on notification "Welcome to " and process
    Then the user see button "Joined" is displayed

  @BrianDeleteClosedGroup
  Scenario: Brian Delete Closed Group
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search group" and typing keys "TestAutoClosedGroup"
    And the user want to click on title "itemTitle" and process
    When the user want to click on button label "ActionMenu" and process
    And the user click on div "Delete" and process
    Then the user see "Are you sure you want to delete this item permanently?" displayed success
    And the user click on button "buttonSubmit"
    Then the user see message "Successfully deleted the group" displayed
