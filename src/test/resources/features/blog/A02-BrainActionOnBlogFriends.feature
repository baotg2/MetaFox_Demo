@app_blog
Feature:  Brian process on blogs is Friend

  Scenario: Brian Add New Blog With Image With Privacy Is Friend
    Given the user logged in as "brian"
    And the browser opened at "/blog/add"
    And within the content
    When the user adds title with value "BlogName"
    And the user adds description
    And the user set privacy is Friends
    And the user submits the form
    Then the user sees successful flash message
    And the user sees page url matches "/blog/\d+"

  Scenario: Another User Search Blog is not friend
    Given the user logged in as "terry"
    And the browser opened at "/blog"
    And within the sidebar
    And the user searches with text "BlogName"

  @focus
  Scenario: Brain Share Now On Blog Friend Just Add
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    # next
    Given within the content
    And the user opens share menu
    When the user clicks on menu item "share_now"
    And the user sees successful flash message

  Scenario: Another user access Brian profile and see blog
    Given the user logged in as "terry"
    And the browser opened at "/user/3/blog"
    And within the content
    Then the user sees text "shared a post to newsfeed "
    Then the user sees text "Owner of this post has limited who can view this post."

  Scenario: Brain Delete Blog Friend Just Added
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogName"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user opens action menu
    And the user clicks on menu item "delete"
    And the user accepts the confirm
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message
    Then the user sees text "No blogs are found. "