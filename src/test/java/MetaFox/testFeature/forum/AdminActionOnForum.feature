@MetaFox @forum  @AdminActionOnForum
Feature:  Brian process on Forum

  @AdminCreateNewThread
  Scenario: Admin Create New Thread
    Given the user logged in as "admin"
    When the user action on "More"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user action on input field "title" with value "IsThreadDisplayedOnWiki"
    And the user add value on div "textbox"
    And the user want to add attach files
    And the user add value on "tags-tags" is "tag-tag"
    And the user click on input type check box "is_wiki"
    When the user click on button "buttonSubmit"
    Then the user see message "Thread created successfully" displayed
    And the user see title "IsThreadDisplayedOnWiki" is displayed

  @AdminVerifyWikiTab
  Scenario: Admin Verify WikiTab
    Given the user logged in as "admin"
    When the user action on "More"
    When the browser opened at item "forum" and tab "/forum/wiki-thread"
    Then the user see a element "IsThreadDisplayedOnWiki" is displayed on detail

  @AnotherVerifyWikiTab
  Scenario: Another User Verify WikiTab
    Given the user logged in as "brian"
    When the user action on "More"
    When the browser opened at item "forum" and tab "/forum/wiki-thread"
    Then the user see a element "IsThreadDisplayedOnWiki" is displayed on detail