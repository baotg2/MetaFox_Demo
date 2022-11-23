@app_group @group_public @brian
Feature:  Brain Process On Public Groups

  Scenario: Brian Add New Group With Empty Value
    Given the user logged in as "brian"
    And the browser opened at "/group/add"
    And within the content
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Group Name is required."
    Then the user sees text "Group Privacy is required."

  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    And the browser opened at "/group/add"
    And within the content
    Given the user add on "inputName" with value "IsPublicGroup"
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Given within the slot top
    Then the user sees text "IsPublicGroup"

  Scenario: Another User Search Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    Given within the slot top
    Then the user sees text "IsPublicGroup"

  Scenario: Another User Join Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user "Join Group"
    Then the user sees successful flash message
    Then the user sees button "Joined" on screen

  Scenario: Another User Post On Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    When the user clicks on the item title
    And the user "whatsHappening" this item
    And within the status composer
    When the user add comment "AutoPostStatus1" on items
    And the user clicks on button "submit"

  Scenario: Brain Reaction Group
    Given the user logged in as "brian"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And the user clicks on button "reactionButton"
  @focus
  Scenario: Another User Leave Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu
    And the user clicks on menu item "leave_group"
    Then the user sees text "Are you sure you want to leave this group?"
    And the user accepts the confirm
    Then the user sees button "Join" on screen

  Scenario: Another User Join Group
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    When the user clicks on the "Join Group" on page
    Then the user sees successful flash message

  Scenario: Brain Add MemberShip Question
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user clicks on the item title
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

  Scenario: Brain Add Pending Post
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user clicks on the item title
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
    And the user clicks on the item title
    Then the user "whatsHappening" this item
    And the user add comment "AutoPostStatus"
    And the user clicks on button "submit"
    And I want to click on "Logout"
    Given the user logged in as "brian"
    Then the user "new_notification" this item
    Then the user clicks on notification " is waiting for your approval." and process
    Then the user "Approve" on invite

  Scenario: Brain Delete Public Groups
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user clicks on the item title
    When the user sees text "actionMenu" and click on
    And  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to delete this group permanently?"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message