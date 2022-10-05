@MetaFox @blogs  @blogFunction_Admin
Feature:  Admin process on blogs app

  @AdminAddNewBlogWithoutImage
  Scenario: Admin Add New Blog Without Image
    Given the user logged in as "admin"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "Admin Blogs"
    Then the user don't add photo
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonSubmit"
    And the user see message "Blog published successfully" displayed
    Then the user verify title of blog is displayed

  @AdminSeePendingBlog
  Scenario: Admin See Pending Blog
    Given the user logged in as "admin"
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/pending"
    And the user see "No blogs found" on left menu
    And the user back to "linkLogo" page

  @AdminEditRanDomBlog
  Scenario: Admin Edit Ran Dom Blog
    Given the user logged in as "admin"
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/my"
    And the user click on "actionMenuButton" to access blog
    And the user "Edit blog" this item
    Then the user see main form "form" is displayed
    And the user action on input field "title" with value "Modify Admin Blog"
    And the user click on button "buttonSubmit"
    Then the user see message "Blog updated successfully" displayed

  @AdminDeleteRanDomBlog
  Scenario: Admin Delete Ran Dom Blog
    Given the user logged in as "admin"
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user "Delete" this item
    Then the user see id button "buttonSubmit" is displayed
    Then the user see id button "buttonCancel" is displayed