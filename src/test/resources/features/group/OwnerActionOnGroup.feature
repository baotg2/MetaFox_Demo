@group @OwnerActionOnPublicGroups
Feature:  Owner Action On Public Groups

  @OwnerAddNewGroups
  Scenario: Owner Add New Group
    Given the user logged in as "admin"
    Then the user clicks on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user clicks on input field "name" with value "Groups"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add value on "select-reg_method" is "Public"
    And the user clicks on button "buttonSubmit"
    Then Then the user sees text "GroupTestAuto"

  @OwnerChangeCoverImage
  Scenario: Owner Change Cover Image
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    And the user want upload 1 photo
    And the user want to "Save"
    And the user want to refresh page before handle the action
    Then the user sees text "updated the group cover photo "

  @OwnerAddBlogs
  Scenario: OwnersAddBlogOnGroup
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    When the user sees item of "More"
    Then the user access on sub items "Blogs" more option
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
    
  @OwnerAddPhotoToGroup
  Scenario: OwnersAddPhotoToGroup
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user searches with text "Groups"
    And the user want to click on title "itemTitle" and process
    When the user want to access items "photo" on user profile
