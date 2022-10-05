@MetaFox @blogs  @blogFunction_Brian
Feature:  Brian process on blogs app

  @BrianAddNewBlogWithImage
  Scenario: Brian Add New Blog With Image
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "BlogName"
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonSubmit"
    And the user see message "Blog published successfully" displayed
    Then the user verify title of blog is displayed

  @BrainSeePostOfBlogOnFeed
  Scenario: Brian see post of blog on feed
    Given the user logged in as "brian"
    When the user want to access "userAvatar"
    And the user want to refresh page before handle the action
    Then the user see "added a blog" on left menu
    Then the user see a element "TestAuto" is displayed on detail

  @BrianCommentOnBlog
  Scenario: Brian comment on blog
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user add comment "test comment" on blog
    Then the user see "test comment" displayed success

  @BrianReactionOnBlogJustAdd
  Scenario: Brain Reaction On This Blog
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "reactionButton"

  @BrianShareNowOnBlogJustAdd
  Scenario: Brain Share Now On Blog Just Add
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user action on "Share now"
    Then the user see message "Shared successfully" displayed
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see a element "TestAuto" is displayed on detail

  @BrianShareOnFeedOnBlogJustAdd
  Scenario: Brain Share On Feed Blog Just Add
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user action on "Share now"
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see a element "TestAuto" is displayed on detail

  @BrianShareOnFriendOnBlogJustAdd
  Scenario: Brain Share On Friend Blog Just Add
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user "share_on_friends" this item
    Then the user "itemUndefined" this item
    And the user click on button "submit"
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see a element "TestAuto" is displayed on detail
    
  @BrianEditHisBlog
  Scenario: Brian Edit His Blog
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/my"
    And the user see "My Blogs" is displayed
    And the user click on "actionMenuButton" to access blog
    And the user "edit" this item
    Then the user see main form "form" is displayed
    And the user action on input field "inputTitle" with value "Auto Test New Blogs Name"
    And the user click on button "buttonSubmit"
    Then the user see message "Blog updated successfully" displayed

  @BrainDeleteBlogsJustAdded
  Scenario: Brain Delete Blog Just Added
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "Auto Test New Blogs Name"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    Then the user "delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Blog deleted successfully" displayed
    Then the user see "No blogs found" on left menu

  @BrianAddNewBlogAndSaveDraft
  Scenario: Brian Add New Blog And Save As Draft
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "BlogName"
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonDraft"
    Then the user see message "Already saved blog as draft" displayed
    Then the user verify title of blog is displayed

  @BrianPublishDraftBlog
  Scenario: Brian Publish Draft Blog
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/draft"
    And the user click on "actionMenuButton" to access blog
    And the user "publish" this item
    And the user click on button "buttonSubmit"
    And the user see message "Blog published successfully" displayed

  @BrianReportBlog
  Scenario: Brian Report Blog
    Given the user logged in as "admin"
    Then the user see search field "Search" and typing keys "brian"
    And the user want to click on "/brian"
    And the user see item of "More"
    And the user want access tool tip "Blogs" from More
    And the user want to click on button label "actionMenu" and process
    And the user "report" this item
    Then the user see main form "form" is displayed
    And the user click on button "buttonSubmit"
    Then the user see message "Reported successfully!" displayed

  @BrianSearchEmptyKeyWord
  Scenario: Brian Search Empty KeyWord
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "SearchSomethings"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user see "No blogs found" on left menu

  @BrianFeatureBlogs
  Scenario: Brain Feature Blogs
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user "feature" this item
    Then the user see message "Blog featured successfully" displayed
    Then the user see label of action "featured" is displayed

  @BrianUnFeatureBlogs
  Scenario: Brain UnFeature Blogs
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user "removeFeature" this item
    Then the user see message "Blog unfeatured successfully" displayed

  @BrainDeleteDraftBlog
  Scenario: Brain Delete Draft Blog
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    Then the user "delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Blog deleted successfully" displayed
    Then the user see "No blogs found" on left menu

  @BrianDeleteBlogOnUserProfile
  Scenario: Brian Delete Blog On User Profile
    Given the user logged in as "brian"
    Then the user want to access "userAvatar"
    And the user see item of "More"
    And the user want access tool tip "Blogs" from More
    And the user want to click on "/blog/add"
    Then the user action on input field "title" with value "BlogName"
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
    And the user "delete" this item
    And the user click on button "buttonSubmit"
    Then the user see message "Blog deleted successfully" displayed