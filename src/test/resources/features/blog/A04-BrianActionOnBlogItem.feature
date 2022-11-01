@app_blog @user_brian
Feature:  Brian process on blogs app

  Scenario: Brian add new blog with image
    Given the user logged in as "brian"
    And the browser opened at "/blog/add"
    When the user adds title
    And the user adds description
    And the user attaches a photo
    And the user submits the form
    Then the user sees successful flash message

  Scenario: Brian sees post of blog on feed
    Given the user logged in as "brian"
    And the user opened "brian" profile page
    And within the content
    Then the user sees text "added a blog"


  Scenario: Brian comment on blog
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    # verify
    Given within the content
    And the user clicks on the item title
    Then the user sees page url matches "/blog/\d+"
    # verify
    Given within the content
    When the user add comment "test comment"
    Then the user sees text "test comment"

  Scenario: Brain Reaction On This Blog
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And within the content
    And the user clicks on the item title
    And the user clicks on button "reactionButton"


  Scenario: Brain Share Now On Blog Just Add
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees text "shared a post to newsfeed "
    And the user sees text "TestAuto"


  Scenario: Brain Share On Feed Blog Just Add
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees text "shared a post to newsfeed "
    Then the user sees text "TestAuto"

  Scenario: Brain Share On Friend Blog Just Add
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user clicks on button "menuShareButton"
    When the user "share_on_friends" this item
    Then the user "itemUndefined" this item
    And the user clicks on button "submit"
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user sees text "TestAuto"


  Scenario: Brian Edit His Blog
    Given the user logged in as "brian"
    And the browser opened at "/blog/my"
    And within the content
    And the user sees text "My Blogs"
    When the user opens action menu
    And the user clicks on "edit"
    Then the user sees page url matches "/blog/edit/\d+"
    And within the main form
    And the user adds title with value "Auto Test New Blogs Name"
    And the user submits the form
    Then the user sees page url matches "/blog/\d+"
    And the user sees successful flash message

  Scenario: Brain Delete Blog Just Added
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    And the user searches with text "Auto Test New Blogs Name"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    Given within the content
    And the user opens action menu
    And  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message


  Scenario: Brian Add New Blog And Save As Draft
    Given the user logged in as "brian"
    And the browser opened at "/blog/add"
    Then the user adds title with value "BlogName"
    And the user adds description
    And the user clicks on button "buttonDraft"
    Then the user sees successful flash message
    Then the user verify title of blog is displayed

  Scenario: Brian Publish Draft Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/draft"
    And the user opens action menu
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message

  Scenario: Brian Report Blog
    Given the user logged in as "brian"
    And the browser opened at "/"
    Then the user searches with text "brian"
    And the user clicks on element link text a "Brian"
    And the user sees item of "More"
    And the user want access tool tip "Blogs" from More
    And the user want to click on button label "Action Menu" and process
    When the user clicks on item "report"
    Then the user sees main form "form"
    And the user submits the form
    Then the user sees successful flash message


  Scenario: Brian Search Empty KeyWord
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user searches with text "searchesomethings"
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
    Then the user sees label of action "featured"


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
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user opens action menu
    And  the user clicks on menu item "delete"
    And the user sees confirm popup
    Then the user sees successful flash message

  Scenario: Brian deletes blog on his profile page
    Given the user logged in as "brian"
    And the user opened "brian" profile page
    And the user want access tool tip "Blogs" from More
    And the user want to click on "/blog/add"
    Then the user adds title with value "BlogName"
    Then the user want to add photo
    And the user adds description
    And the user attaches a photo
    And the user adds a category
    And the user adds a tag
    And the user submits the form
    And the user sees successful flash message
    Then the user verify title of blog is displayed
    Then the user want to access "userAvatar"
    And the user sees item of "More"
    And the user want access tool tip "Blogs" from More
    And the user "buttonActionMenu" this item
    And  the user clicks on menu item "delete"
    And the user submits the form
    Then the user sees successful flash message