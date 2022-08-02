@MetaFox @blogs  @blogFunction_Brian
Feature:  Brian process on blogs app

  @BrianAddNewBlogWithImage
  Scenario: Brian Add New Blog With Image
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "inputTitle" with value "BlogName"
    Then the user want to add photo
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonSubmit"
    And the user see message "Blog published successfully" displayed
    Then the user verify title of blog is displayed

  @BrianCommentOnBlog
  Scenario: Brian comment on blog
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user not see "No Results Found" is displayed on result table
    And the user want to click on title "itemTitle" and process
    And the user add comment "test comment" on blog
    Then the user see "test comment" displayed success

  @BrianReactionOnBlogJustAdd
  Scenario: Brain Reaction On This Blog
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user not see "No Results Found" is displayed on result table
    And the user want to click on title "itemTitle" and process
    And the user click on button "reactionButton"

  @BrianEditHisBlog
  Scenario: Brian Edit His Blog
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab "/blog/my"
    And the user see "My Blogs" is displayed
    And the user click on "actionMenuButton" to access blog
    And the user "Edit blog" this item
    Then the user see main form "form" is displayed
    And the user action on input field "inputTitle" with value "Auto Test New Blogs Name"
    And the user click on button "buttonSubmit"
    Then the user see message "Blog updated successfully" displayed

  @BrainDeleteBlogsJustAdded
  Scenario: Brain Delete Blog Just Added
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "Auto Test New Blogs Name"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user not see "No Results Found" is displayed on result table
    And the user click on "actionMenuButton" to access blog
    Then the user "Delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Blog deleted successfully" displayed
    Then the user see "No Results Found" is displayed on result table

  @BrianAddNewBlogAndSaveDraft
  Scenario: Brian Add New Blog And Save As Draft
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "inputTitle" with value "BlogName"
    Then the user don't add photo
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonDraft"
    Then the user see message "Blog published successfully" displayed
    Then the user verify title of blog is displayed

  @BrianPublishDraftBlog
  Scenario: Brian Publish Draft Blog
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab "/blog/draft"
    And the user click on "actionMenuButton" to access blog
    And the user "Publish" this item
    And the user click on button "buttonSubmit"
    And the user see message "Blog published successfully" displayed

  @BrainDeleteDraftBlog
  Scenario: Brain Delete Draft Blog
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user not see "No Results Found" is displayed on result table
    And the user click on "actionMenuButton" to access blog
    Then the user "Delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Blog deleted successfully" displayed
    Then the user see "No Results Found" is displayed on result table

  @BrianReportBlog
  Scenario: Brian Report Blog
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user "Report" this item
    Then the user see main form "form" is displayed
    And the user click on button "buttonSubmit"

  @BrianSearchEmptyKeyWord
  Scenario: Brian Search Empty KeyWord
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "SearchSomethings"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user see "No Results Found" is displayed on result table

  @BrianDeleteBlogOnUserProfile
  Scenario: Brian Delete Blog On User Profile
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user see item of "More"
    And the user want access tool tip "Blogs" from More
    And the user want to click on "/blog/add"
    Then the user action on input field "inputTitle" with value "BlogName"
    Then the user want to add photo
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonSubmit"
    And the user see message "Blog published successfully" displayed
    Then the user verify title of blog is displayed
    Then the user want to access "userAvatar"
    And the user see item of "More"
    And the user want access tool tip "Blogs" from More
    And the user "buttonActionMenu" this item
    And the user "Delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Blog deleted successfully" displayed

  @BrianFeatureBlogs
  Scenario: Brain Feature Blogs
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user "Feature" this item
    Then the user see message "Blog featured successfully" displayed
    Then the user see label of action "featured" is displayed

  @BrianUnFeatureBlogs
  Scenario: Brain UnFeature Blogs
    Given the user logged in as "brian"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user "Un-Feature" this item
    Then the user see message "Blog unfeatured successfully" displayed