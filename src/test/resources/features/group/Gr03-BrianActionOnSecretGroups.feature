@app_group @group_secret @brian @wip
Feature:  Brain Process On Secret Groups

  Scenario: Brian Add New Group
    Given the user logged in as "brian"
    Then the user clicks on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user clicks on input field "name" with value "TestAutoSecretGroup"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add value on "select-reg_method" is "Secret"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "TestAutoSecretGroup"

  Scenario: Another User Search Group
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "TestAutoSecretGroup"
    Then the user sees text "No groups are found. "

  Scenario: Brian Invite Another User Join Secret Group
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "TestAutoSecretGroup"
    And the user clicks on the item title
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
    Then the user sees button "Joined"

  Scenario: Another user leave secret group
    Given the user logged in as "test"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "TestAutoSecretGroup"
    And the user clicks on the item title
    When the user sees text "actionMenu" and click on
    And the user clicks on div "leave_group" and process
    Then the user sees text "Are you sure you want to leave this group?"
    And the user clicks on button "buttonSubmit"

  Scenario: Brain delete secret group
    Given the user logged in as "brian"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "TestAutoSecretGroup"
    And the user clicks on the item title
    When the user want to click on button label "Action Menu" and process
    When  the user clicks on menu item "delete"
    Then the user sees text "Are you sure you want to delete this group permanently?"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message