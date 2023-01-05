@app_group @group_secret @brian
Feature:  Brain Process On Secret Groups

  Scenario: Brian Add New Group
    Given the user logged in as "brian1"
    And the browser opened at "/group/add"
    And within the content
    Given the user add on "inputName" with value "TestAutoSecretGroup"
    And the user types a sentence in "inputText"
    And the user add value on "select-reg_method" is "Secret"
    And the user clicks on button "buttonSubmit"
    Given within the slot top
    Then the user sees text "TestAutoSecretGroup"

  Scenario: Another User Search Group
    Given the user logged in as "terry1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "TestAutoSecretGroup"
    Given within the content
    Then the user sees text "No groups are found. "

  Scenario: Brian Invite Another User Join Secret Group
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "TestAutoSecretGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the owner invite to friend
    And the user clicks on menu item "invite"
    When the user selects friends on friend list

  Scenario: Another user leave secret group
    Given the user logged in as "test1"
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

  Scenario: Brain delete secret group
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "TestAutoSecretGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message