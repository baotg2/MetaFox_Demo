@app_blog @user_admin
Feature:  Admin process on blogs app

  @focus
  Scenario: Admin Add New Blog Without Image
    Given the user logged in as "brian"
    And the browser opened at "/blog/add"
    And within the content
    Then the user action on input field "title" with value "Admin Blogs"
#    And the user add value on div "textbox"
#    And the user want to add attach a photo
#    And the user want add categories is "Education"
#    And the user add value on "tags-tags" is "tag-tag"
#    And the user click on button "buttonSubmit"
#    And the user see message "blogCreate" displayed
#    Then the user verify title of blog is displayed

  Scenario: Admin See Pending Blog
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/pending"
    And the user see "No blogs found" on left menu
    And the user back to "linkLogo" page

  @AdminEditRanDomBlog
  Scenario: Admin Edit Ran Dom Blog
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/my"
    And the user click on "actionMenuButton" to access blog
    And the user action on "Edit blog"
    Then the user see main form "form" is displayed
    And the user action on input field "title" with value "Modify Admin Blog"
    And the user click on button "buttonSubmit"
    Then the user see message "blogUpdate" displayed

  @AdminDeleteRanDomBlog
  Scenario: Admin Delete Ran Dom Blog
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the user action on "More"
    And the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user action on "Delete"
    Then the user see id button "buttonSubmit" is displayed
    Then the user see id button "buttonCancel" is displayed