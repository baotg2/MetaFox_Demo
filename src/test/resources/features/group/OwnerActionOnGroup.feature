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
    Then the user seestitle h2 "GroupTestAuto" is displayed

  @OwnerChangeCoverImage
  Scenario: Owner Change Cover Image
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user sees search field "Search groups" and typing keys "Groups"
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
    And the user sees search field "Search groups" and typing keys "Groups"
    And the user want to click on title "itemTitle" and process
    When the user sees item of "More"
    Then the user access on sub items "Blogs" more option
    When the user clicks on element link text a "Add New Blog"
    Then the user seestitle "Add New Blog" is displayed
    Then the user clicks on input field "title" with value "BlogName"
    And the user adds description
    And the user attaches a photo
    And the user adds category "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify title of blog is displayed
    
  @OwnerAddPhotoToGroup
  Scenario: OwnersAddPhotoToGroup
    Given the user logged in as "admin"
    When the user clicks on "More"
    Then the browser opened at item "group" and tab ""
    And the user sees search field "Search groups" and typing keys "Groups"
    And the user want to click on title "itemTitle" and process
    When the user want to access items "photo" on user profile
