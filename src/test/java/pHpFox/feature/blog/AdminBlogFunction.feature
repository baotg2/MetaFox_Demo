@pHpV5 @blogFunction_Admin
Feature:  Admin process on blogs item
  @AdminAddNewBlogWithImage
  Scenario: Admin Add New Blog With Image
    Given the user logged in as "admin"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "inputTitle"
    Then the user want to add photo
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add topic is "tag-tag"
    And the user click on button"buttonSubmit"
    And the user see message "Blog published successfully." displayed
    Then the user verify title of blog is displayed
#
  @AdminAddNewBlogWithoutImage
  Scenario: Admin Add New Blog Without Image
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "inputTitle"
    Then the user don't add photo
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add topic is "tag-tag"
    And the user click on button"buttonSubmit"
    And the user see message "Blog published successfully." displayed
    Then the user verify title of blog is displayed


  @AdminEditHisBlog
  Scenario: Admin Edit His Blog
    Given the user logged in as "admin"
    Then the browser opened at item "blog" and tab "/blog/add"
    And the user see "My Blogs" is displayed
    And the user click on "actionMenuButton" to access blog
    And the user "edit" this blogs


  @AdminSearchHisBlog
  Scenario: Admin Search bla bla bla
    Given the user logged in as "admin"
    Then the browser opened at item "blog" and tab ""
    And the user typing keys "bla bla bla" on search field
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user see "No Results Found" is displayed on result table


  @AdminDeleteBlogsJustAdded
  Scenario: Admin Delete Blog Just Added
    Given the user logged in as "admin"
    Then the browser opened at item "blog" and tab ""
    And the user typing keys "" on search field
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user not see "No Results Found" is displayed on result table
    And the user click on "actionMenuButton" to access blog
    Then the user "delete" this blogs
    And the user click on button"buttonSubmit"
