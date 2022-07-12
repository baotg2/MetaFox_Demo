@MetaFox @forum  @BrainActionOnForum
Feature:  Brian process on multiple choice polls

  @BrianAddNewForumWithEmptyValue
  Scenario: Brian Add New Poll Public Vote
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user click on button "buttonSubmit"
    Then the user see "Title is a required field." displayed success
    Then the user see "Content is a required field." is displayed on user profile

  @BrainAddNewForum
  Scenario: Brian Add New Forum
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user action on input field "inputTitle" with value "IsThreadAutotest"
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user add value on "tags-tags" is "tag-tag"
    When the user click on button "buttonSubmit"
    Then the user see message "Thread created successfully" displayed
    And the user see title "IsThreadAutotest" is displayed

  @AnotherUserReplyThread
  Scenario: Another User Reply Thread
    Given the user logged in as "terry"
    Then the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThreadAutotest" is displayed
    And the user add value on div "textbox"
    And the user want to add attach files
    When the user click on button "buttonSubmit"
    Then the user see message "Post created successfully" displayed

