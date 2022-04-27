@pHpV5 @blogFunction_Brian
Feature:  Brian process on blogs item
@BrianAddNewBlogWithImage
Scenario: Brian Add New Blog With Image
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab "/blog/add"
  Then the user action on input field "inputTitle" with value "BlogName"
  Then the user want to add photo
  And the user add value on div "textbox"
  And the user want to add attach files
  And the user want add categories is "Education"
  And the user add topic is "tag-tag"
  And the user click on button "buttonSubmit"
  And the user see message "Blog published successfully." displayed
  Then the user verify title of blog is displayed

@BrianCommentOnBlog
Scenario: Brian comment on blog
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab "/blog/all"
  And the user access this blog by "itemMedia" and process
  And the user add comment "test comment" on blog