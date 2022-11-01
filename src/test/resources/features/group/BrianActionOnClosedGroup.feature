 @group @brianActionOnClosedGroup
Feature:  Brain Process On Closed Groups

  @BrianAddNewClosedGroups
  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user clicks on input field "name" with value "TestAutoClosedGroup"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add value on "select-reg_method" is "Closed"
    And the user clicks on button "buttonSubmit"
    Then the user see title h2 "TestAutoClosedGroup" is displayed

  @AnotherUserSearchClosedGroup
  Scenario: Another User Search Group
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "TestAutoClosedGroup"
    And the user want to click on title "itemTitle" and process
    Then the user see title h2 "TestAutoClosedGroup" is displayed

  @BrianApproveAnotherUserJoinClosedGroup
  Scenario: Brian Approve Another User Join Closed Group
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "TestAutoClosedGroup"
    And the user want to click on title "itemTitle" and process
    When the user want to "Join Group"
    Then the user see button "Pending Request" is displayed
    And I want to click on "Logout"
    Given the user logged in as "brian"
    When the user "new_notification" this item
    Then the user clicks on notification "requested to join TestAutoClosedGroup" and process
    And the user want to click on list button label "PENDING REQUESTS" and process
    When the user want to edit "itemview group_request"
    Then the user sees successful flash message
    Then I want to click on "Logout"
    Given the user logged in as "terry"
    Then the user "new_notification" this item
    And the user clicks on notification "An admin has approved your request to join the group." and process
    Then the user see button "Joined" is displayed

  @BrianDeleteClosedGroup
  Scenario: Brian Delete Closed Group
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "TestAutoClosedGroup"
    And the user want to click on title "itemTitle" and process
    When the user see "actionMenu" and click on
    And the user clicks on "Delete"
    Then the user see "Are you sure you want to delete this group permanently?" displayed success
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
