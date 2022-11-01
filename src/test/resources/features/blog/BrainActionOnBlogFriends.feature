@app_blog
Feature:  Brian process on blogs is Friend

  @focus
  Scenario: Brian Add New Blog With Image With Privacy Is Friend
    Given the user logged in as "brian"
    And the browser opened at "/blog/add"
    And within the content
    When the user clicks on input field "title" with value "BlogName"
    And the user add value on div "textbox"
    And the user see item of "Everyone"
    And the user set privacy is Friends
    And the user submits the form
    And the user sees successful flash message

  @flaky
  Scenario: Another User Search Blog Is Friend
    Given the user logged in as "test"
    And the browser opened at "/blog"
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user want to click on title "itemTitle" and process
    Then the user see title "TestAuto" is displayed


  @AnotherUserSearchBlogIsNotFriend
  Scenario: Another User Search Blog is not friend
    Given the user logged in as "terry"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    Then the user see "No blogs are found." on left menu


  @BrianShareNowOnBlogFriendJustAdd
  Scenario: Brain Share Now On Blog Friend Just Add
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    And the user clicks on button "menuShareButton"
    When the user clicks on "Share now"
    And the user sees successful flash message
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see a element "TestAuto" is displayed on detail


  @AnotherUserAccessOnBrianProfileAndSeeBlog
  Scenario: Another user access Brian profile and see blog
    Given the user logged in as "terry"
    And the browser opened at "/"
    Then the user see search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see "Owner of this post has limited who can view this post." is displayed on user profile


  @BrainDeleteBlogsFriendJustAdded
  Scenario: Brain Delete Blog Friend Just Added
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user opens action menu
    And the user clicks on "Delete"
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user see "No blogs are found." on left menu