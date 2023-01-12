@app_group @group_owner @previewSite
Feature:  Owner Action On Public Groups

  Scenario: Owner Add New Group
    Given the user logged in as "brian1"
    And the browser opened at "/group/add"
    And within the content
    Given the user add on "inputName" with value "IsTestAutoGroup"
    And the user types a sentence in "inputText"
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Given within the slot top
    Then the user sees text "IsTestAutoGroup"

  Scenario: Owner Change Cover Image
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroup"
    Given within the content
    And the user clicks on the item title
    And within the slot top
    And the user want upload 1 photo
    And the user want to "Save"
    Then the user sees successful flash message
    Given within the content
    And the user navigates to "/home"
    And the user want to refresh page before handle the action
    Then the user sees text "updated the group cover photo"

  Scenario: OwnersAddBlogOnGroup
    Given the user logged in as "admin"
    And the browser opened at "/group"
    And within the sidebar
    And the user searches with text "IsTestAutoGroup"
    Given within the content
    And the user clicks on the item title
    Given the user navigates to "/blog"
    When the user clicks on element link text a "Add New Blog"
    Then the user sees text "Add New Blog"
    Then the user adds title with value "BlogName"
    And the user adds description
    And the user attaches a photo
    And the user adds a category
    And the user adds a tag
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify title of blog is displayed