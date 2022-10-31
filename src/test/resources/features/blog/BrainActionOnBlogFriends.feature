@MetaFox @blogs  @blogFriendFunction_Brian
Feature:  Brian process on blogs is Friend


  @BrianAddNewBlogWithImageIsFriend
  Scenario: Brian Add New Blog With Image With Privacy Is Friend
    Given the user logged in as "brian"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "BlogName"
    And the user add value on div "textbox"
    And the user want to add attach a photo
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user see item of "Everyone"
    When the user see item of "Friends"
    And the user click on button "buttonSubmit"
    And the user see message "blogCreate" displayed
    Then the user verify title of blog is displayed


  @AnotherUserSearchBlogIsFriend
  Scenario: Another User Search Blog Is Friend
    Given the user logged in as "test"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    And the user want to click on title "itemTitle" and process
    Then the user see title "TestAuto" is displayed


  @AnotherUserSearchBlogIsNotFriend
  Scenario: Another User Search Blog is not friend
    Given the user logged in as "terry"
    And the browser opened at "/"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogName"
    Then the user see "No blogs are found." on left menu


  @BrianShareNowOnBlogFriendJustAdd
  Scenario: Brain Share Now On Blog Friend Just Add
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
    And the user see message "blogShareNow" displayed
    And the user back to "linkLogo" page
    And the user want to refresh page before handle the action
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see a element "TestAuto" is displayed on detail


  @AnotherUserAccessOnBrianProfileAndSeeBlog
  Scenario: Another user access Brian profile and see blog
    Given the user logged in as "terry"
    And the browser opened at "/"
    Then the user see search field "Search" and typing keys "brian"
    And the user click on element link text a "Brian"
    Then the user see "shared a post to newsfeed" on left menu
    Then the user see "Owner of this post has limited who can view this post." is displayed on user profile


  @BrainDeleteBlogsFriendJustAdded
  Scenario: Brain Delete Blog Friend Just Added
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
    And the user see message "blogDelete" displayed
    Then the user see "No blogs are found." on left menu