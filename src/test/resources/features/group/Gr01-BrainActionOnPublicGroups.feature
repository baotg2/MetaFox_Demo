@app_group @group_public @brian @previewSite
Feature:  Brain Process On Public Groups

  Scenario: 01_Brian Add New Group With Empty Value
    Given the user logged in as "brian1"
    And the browser opened at "/group/add"
    And within the content
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Group Name is required."
    Then the user sees text "Group Privacy is required."

  Scenario: 02_Brian Add New Group
    Given the user logged in as "brian1"
    And the browser opened at "/group/add"
    And within the content
    Given the user add on "inputName" with value "IsPublicGroup"
    And the user types a sentence in "inputText"
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Given within the slot top
    Then the user sees text "IsPublicGroup"

  Scenario: 03_Another User Search Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    Given within the slot top
    Then the user sees text "IsPublicGroup"

  Scenario: 04_Another User Join Group
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

  Scenario: 05_Another User Post On Group
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

  Scenario: 06_Brain Reaction Group
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And the user clicks on button "reactionButton"

  Scenario: 07_Another User Leave Group
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "leave_group"
    And the user accepts the confirm
    Then the user sees button "Join" on screen

  Scenario: 08_Another User Join Group
    Given the user logged in as "terry1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user "Join Group"
    Then the user sees successful flash message
    Then the user sees button "Joined" on screen

  Scenario: 09_Brain Add MemberShip Question
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    When the user navigates to "/membership_questions"
    Given within the content
    And the user "Add"
    Given within the basic
    And the user adds on "question"
    When the user select option Written Answer
    Given within the form
    And the user clicks on button "buttonSubmit"

  Scenario: 010_Another user see membership questions
    Given the user logged in as "krixi1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user "Join Group"
    Given within the form
    Then the user sees button "Submit" on screen

  Scenario: 011_Brain Add Pending Post
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    When the user navigates to "/pending_posts"
    And within the content
    When the users turn on setting

  Scenario: 012_Brain Delete Public Groups
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsPublicGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message