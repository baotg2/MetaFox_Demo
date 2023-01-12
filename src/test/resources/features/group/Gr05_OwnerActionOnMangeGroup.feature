@app_group @group_owner @brian @previewSite
Feature:  Owner Action On Manage Group

  Scenario: Owner Add New Group
    Given the user logged in as "brian1"
    And the browser opened at "/group/add"
    And within the content
    Given the user add on "inputName" with value "IsTestAutoGroupManage"
    And the user types a sentence in "inputText"
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Given within the slot top
    Then the user sees text "IsTestAutoGroupManage"

  Scenario: Owner Access Manage Group Info
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/info"
    Given within the content
    Then the user sees text "Group Info"

  Scenario: Owner Access Mange About Group
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/about"
    Given within the content
    Then the user sees text "About Group"

  Scenario: Owner Access Manage Permissions Group
    Given the user logged in as "brian1"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroupManage"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    When the user opens action menu by label
    And the user clicks on menu item "manage"
    Given within the sidebar menu
    And the user clicks on "Settings"
    And the user navigates to "/permissions"
    Given within the content
    Then the user sees text "Who can create posts?"