@app_blog @user_brian
Feature:  Brian process on blogs app

  Scenario: Brian add new blog with image
    Given the user logged in as "brian"
    And the browser opened at "/blog/add"
    When the user adds title
    And the user adds description
    And the user attaches a photo
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  Scenario: Brian sees post of blog on feed
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user want to access "userAvatar"
    And the user want to refresh page before handle the action
    Then the user sees text "added a blog "
    Then the user seesa element "TestAuto" is displayed on detail


  Scenario: Brian comment on blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user sees search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user add comment "test comment" on blog
    Then the user sees text "test comment" displayed success

  Scenario: Brain Reaction On This Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user sees search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user clicks on button "reactionButton"


  Scenario: Brain Share Now On Blog Just Add
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user sees search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees text "shared a post to newsfeed "
    Then the user seesa element "TestAuto" is displayed on detail


  Scenario: Brain Share On Feed Blog Just Add
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user sees search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees text "shared a post to newsfeed "
    Then the user seesa element "TestAuto" is displayed on detail

  Scenario: Brain Share On Friend Blog Just Add
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user sees search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user clicks on button "menuShareButton"
    When the user "share_on_friends" this item
    Then the user "itemUndefined" this item
    And the user clicks on button "submit"
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user seesa element "TestAuto" is displayed on detail


  Scenario: Brian Edit His Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/my"
    And the user sees text "My Blogs" is displayed
    When And the user opens action menu
    And the user clicks on "edit"
    Then the user seesmain form "form" is displayed
    And the user clicks on input field "title" with value "Auto Test New Blogs Name"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message


  Scenario: Brain Delete Blog Just Added
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user sees search field "Search blogs" and typing keys "Auto Test New Blogs Name"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user opens action menu
    And  the user clicks on menu item "delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "No blogs are found. "


  Scenario: Brian Add New Blog And Save As Draft
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user clicks on input field "title" with value "BlogName"
    And the user adds description
    And the user attaches a photo
    And the user adds category "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user clicks on button "buttonDraft"
    Then the user sees successful flash message
    Then the user verify title of blog is displayed

  Scenario: Brian Publish Draft Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/draft"
    And the user opens action menu
    And the user clicks on "Publish"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message

  Scenario: Brian Report Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    Then the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    And the user sees item of "More"
    And the user want access tool tip "Blogs" from More
    And the user want to click on button label "Action Menu" and process
    When the user clicks on item "report"
    Then the user seesmain form "form" is displayed
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message


  Scenario: Brian Search Empty KeyWord
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user sees search field "Search blogs" and typing keys "SearchSomethings"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Then the user sees text "No blogs are found. "

  Scenario: Brain Feature Blogs
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user opens action menu
    And the user clicks on "Feature"
    Then the user sees successful flash message
    Then the user seeslabel of action "featured" is displayed


  Scenario: Brain UnFeature Blogs
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/all"
    And the user opens action menu
    And the user clicks on "Unfeature"
    Then the user sees successful flash message


  Scenario: Brain deletes his draft blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user sees search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user opens action menu
    And  the user clicks on menu item "delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees text "No blogs are found. "

  Scenario: Brian deletes blog on his profile page
    Given the user logged in as "brian"
    And the browser opened at "/"
    Then the user want to access "userAvatar"
    And the user sees item of "More"
    And the user want access tool tip "Blogs" from More
    And the user want to click on "/blog/add"
    Then the user clicks on input field "title" with value "BlogName"
    Then the user want to add photo
    And the user adds description
    And the user attaches a photo
    And the user adds category "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user verify title of blog is displayed
    Then the user want to access "userAvatar"
    And the user sees item of "More"
    And the user want access tool tip "Blogs" from More
    And the user "buttonActionMenu" this item
    And  the user clicks on menu item "delete"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message