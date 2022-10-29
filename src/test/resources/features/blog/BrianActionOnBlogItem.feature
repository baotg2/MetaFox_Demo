@MetaFox @blogs  @blogFunction_Brian
Feature:  Brian process on blogs app
  @BrianAddNewBlogWithImage
  Scenario: Brian Add New Blog With Image
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "BlogName"
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonSubmit"
    And the user see message "blogCreate" displayed
    Then the user verify title of blog is displayed


  @BrainSeePostOfBlogOnFeed
  Scenario: Brian see post of blog on feed
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user want to access "userAvatar"
    And the user want to refresh page before handle the action
    Then the user see "added a blog" on left menu
    Then the user see a element "TestAuto" is displayed on detail


  @BrianCommentOnBlog
  Scenario: Brian comment on blog
    Given the user logged in as "brian"
    And the browser opened at "/"
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
    And the browser opened at "/"
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
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user click on button "menuShareButton"
    When the user action on "Share now"
    Then the user see message "shareNow" displayed
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see a element "TestAuto" is displayed on detail


  @BrianShareOnFeedOnBlogJustAdd
  Scenario: Brain Share On Feed Blog Just Add
    Given the user logged in as "brian"
    And the browser opened at "/"
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
    And the browser opened at "/"
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
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/my"
    And the user see "My Blogs" is displayed
    And the user click on "actionMenuButton" to access blog
    And the user action on "Edit blog"
    Then the user see main form "form" is displayed
    And the user action on input field "title" with value "Auto Test New Blogs Name"
    And the user click on button "buttonSubmit"
    Then the user see message "blogUpdate" displayed


  @BrainDeleteBlogsJustAdded
  Scenario: Brain Delete Blog Just Added
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "Auto Test New Blogs Name"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    And the user action on "Delete"
    And the user click on button "buttonSubmit"
    Then the user see message "blogDelete" displayed
    Then the user see "No blogs are found." on left menu


  @BrianAddNewBlogAndSaveDraft
  Scenario: Brian Add New Blog And Save As Draft
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "BlogName"
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on button "buttonDraft"
    Then the user see message "blogSaveDraft" displayed
    Then the user verify title of blog is displayed


  @BrianPublishDraftBlog
  Scenario: Brian Publish Draft Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/draft"
    And the user click on "actionMenuButton" to access blog
    And the user action on "Publish"
    And the user click on button "buttonSubmit"
    And the user see message "blogPublish" displayed


  @BrianReportBlog
  Scenario: Brian Report Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    Then the user see search field "Search" and typing keys "brian"
    And the user click on element link text a "Brian"
    And the user see item of "More"
    And the user want access tool tip "Blogs" from More
    And the user want to click on button label "Action Menu" and process
    And the user action on "Report"
    Then the user see main form "form" is displayed
    And the user click on button "buttonSubmit"
    Then the user see message "report" displayed


  @BrianSearchEmptyKeyWord
  Scenario: Brian Search Empty KeyWord
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "SearchSomethings"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user see "No blogs are found." on left menu


  @BrianFeatureBlogs
  Scenario: Brain Feature Blogs
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user action on "Feature"
    Then the user see message "blogFeatured" displayed
    Then the user see label of action "featured" is displayed


  @BrianUnFeatureBlogs
  Scenario: Brain UnFeature Blogs
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user click on "actionMenuButton" to access blog
    And the user action on "Unfeature"
    Then the user see message "blogUnFeatured" displayed


  @BrainDeleteDraftBlog
  Scenario: Brain Delete Draft Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    And the user action on "Delete"
    And the user click on button "buttonSubmit"
    Then the user see message "blogDelete" displayed
    Then the user see "No blogs are found." on left menu


  @BrianDeleteBlogOnUserProfile
  Scenario: Brian Delete Blog On User Profile
    Given the user logged in as "brian"
    And the browser opened at "/"
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
    And the user see message "blogCreate" displayed
    Then the user verify title of blog is displayed
    Then the user want to access "userAvatar"
    And the user see item of "More"
    And the user want access tool tip "Blogs" from More
    And the user "buttonActionMenu" this item
    And the user action on "Delete"
    And the user click on button "buttonSubmit"
    Then the user see message "blogDelete" displayed