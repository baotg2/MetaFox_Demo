@MetaFox @group @OwnerActionOnPublicGroups
Feature:  Owner Action On Public Groups

  @OwnerAddNewGroups
  Scenario: Owner Add New Group
    Given the user logged in as "admin"
    Then the user action on "More"
    Then the browser opened at item "group" and tab "/group/add"
    And the user action on input field "inputName" with value "Groups"
    And the user add value on "select-type_id" is "Song"
    When the user want to select category at 1 on dropdown list "select-type_id"
    And the user add value on "select-reg_method" is "Public"
    And the user click on button "buttonSubmit"
    Then the user see title h2 "GroupTestAuto" is displayed

  @OwnerChangeCoverImage
  Scenario: Owner Change Cover Image
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "Groups"
    And the user want to click on title "itemTitle" and process
    And the user want upload 1 photo
    And the user want to "Save"
    And the user want to refresh page before handle the action
    When the user want to access items "home" on user profile
    And the user back to "embeditem" page
    Then the user see a element "admin" is displayed on detail

  @OwnerAddBlogs
  Scenario: OwnersAddBlogOnGroup
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "group" and tab ""
    And the user see search field "Search groups" and typing keys "Groups"
    And the user want to click on title "itemTitle" and process
    When the user see item of "More"
    Then the user access on sub items "Blogs" more option
    When the user click on element link text a "Add New Blog"
    Then the user see title "Add New Blog" is displayed
    Then the user action on input field "inputTitle" with value "BlogName"
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonSubmit"
    And the user see message "Blog published successfully" displayed
    Then the user verify title of blog is displayed