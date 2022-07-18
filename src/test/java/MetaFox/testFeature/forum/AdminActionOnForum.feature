@MetaFox @forum  @AdminActionOnForum
Feature:  Brian process on Forum

  @AdminStickThread
  Scenario: Admin Stick Thread
    Given the user logged in as "admin"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "stick" and process
    Then the user see message "Thread successfully sticked." displayed
    When the user want to click on button label "actionMenu" and process
    And the user click on div "unstick" and process
    Then the user see message "Thread successfully unsticked." displayed

  @AdminCreateNewThread
  Scenario: Admin Create New Thread
    Given the user logged in as "admin"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user action on input field "inputTitle" with value "IsThreadDisplayedOnWiki"
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
    When the browser opened at item "forum" and tab "/forum/wiki-thread"
    Then the user see a element "IsThreadDisplayedOnWiki" is displayed on detail

  @AnotherVerifyWikiTab
  Scenario: Another User Verify WikiTab
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab "/forum/wiki-thread"
    Then the user see a element "IsThreadDisplayedOnWiki" is displayed on detail