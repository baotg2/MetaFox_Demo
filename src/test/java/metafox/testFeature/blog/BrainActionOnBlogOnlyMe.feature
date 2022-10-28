@blogs  @blogOnlyMeFunction_Brian
Feature:  Brian process on blogs is OnlyMe


  @BrianAddNewBlogWithImageIsOnlyMe
  Scenario: Brian Add New Blog With Image With Privacy Is Only Me
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "BlogOnlyMe"
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user want add categories is "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user see item of "Everyone"
    When the user see item of "Only Me"
    And the user click on button "buttonSubmit"
    And the user see message "blogCreate" displayed


  @AnotherUserSearchBlogOnlyMe
  Scenario: Another User Search Blog Only Me
    Given the user logged in as "terry"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogOnlyMe"
    Then the user see "No blogs are found." on left menu


  @BrianShareNowOnBlogOnlyMeJustAdd
  Scenario: Brain Share Now On Blog OnlyMe Just Add
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogOnlyMe"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    Then the user verify button test data id "menuShareButton" is displayed


  @BrainDeleteBlogsOnlyMeJustAdded
  Scenario: Brain Delete Blog OnlyMe Just Added
    Given the user logged in as "brian"
    When the user action on "More"
    Then the browser opened at item "blog" and tab ""
    And the user see search field "Search blogs" and typing keys "BlogOnlyMe"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user click on "actionMenuButton" to access blog
    And the user action on "Delete"
    And the user click on button "buttonSubmit"
    Then the user see message "blogDelete" displayed
    Then the user see "No blogs are found." on left menu