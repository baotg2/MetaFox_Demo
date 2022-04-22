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
  And the user click on button"buttonSubmit"
  And the user see message "Blog published successfully." displayed
  Then the user verify title of blog is displayed

@BrianAddNewBlogAndSaveDraft
Scenario: Brian Add New Blog And Save As Draft
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab "/blog/add"
  Then the user action on input field "inputTitle" with value "BlogName"
  Then the user don't add photo
  And the user add value on div "textbox"
  And the user want to add attach files
  And the user want add categories is "Education"
  And the user add topic is "tag-tag"
  And the user click on button"buttonDraft"
  And the user see message "Already saved blog as draft" displayed
  Then the user verify title of blog is displayed

@BrianEditHisBlog
Scenario: Brian Edit His Blog
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab "/blog/my"
  And the user see "My Blogs" is displayed
  And the user click on "actionMenuButton" to access blog
  And the user "edit" this item
  Then the user see main form "form" is displayed

@BrianCommentOnBlog
Scenario: Brian comment on blog
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab "/blog/all"
  And the user access this blog by "itemMedia" and process
  And the user add comment "test comment" on blog


@BrianReactionOnBlogJustAdd
Scenario: Brain Delete Blog Just Added
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab ""
  And the user see search field "Search blogs" and typing keys "BlogName"
  And the user access first condition "inputSort"
  And the user access first condition "inputWhen"
  And the user not see "No Results Found" is displayed on result table
  And the user access this blog by "itemMedia" and process
  And the user click on button"reactionButton"


@BrainDeleteBlogsJustAdded
Scenario: Brain Delete Blog Just Added
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab ""
  And the user see search field "Search blogs" and typing keys "BlogName"
  And the user access first condition "inputSort"
  And the user access first condition "inputWhen"
  And the user not see "No Results Found" is displayed on result table
  And the user click on "actionMenuButton" to access blog
  Then the user "delete" this item
  And the user click on button"buttonSubmit"
  Then the user see message "Blog deleted successfully." displayed

@BrianSearchHisBlog
Scenario: Brian Search bla bla bla
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab ""
  And the user see search field "Search blogs" and typing keys "bla bla bla"
  And the user access first condition "inputSort"
  And the user access first condition "inputWhen"
  Then the user see "No Results Found" is displayed on result table

@BrianReportBlog
Scenario: Brian Report Blog
  Given the user logged in as "brian"
  Then the browser opened at item "blog" and tab "/blog/all"
  And the user see "All Blogs" is displayed
  And the user click on "actionMenuButton" to access blog
  And the user "report" this item
  Then the user see main form "form" is displayed