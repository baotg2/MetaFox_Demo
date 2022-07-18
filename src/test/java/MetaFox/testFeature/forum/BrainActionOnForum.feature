@MetaFox @forum  @BrainActionOnForum
Feature:  Brian process on Forum

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

  @BrianVerifySubscribedThreads
  Scenario: Brian verified subscribed threads
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab "/forum/subscribed-thread"
    Then the user see a element "IsThreadAutotest" is displayed on detail

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
    Then the user see div element "itemForumPost" displayed

 @BrianSearchReplies
 Scenario: Brain Search Replies
   Given the user logged in as "brian"
   Then the browser opened at item "forum" and tab ""
   And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
   When the user want to select category at 1 on dropdown list "select-item_type"
   Then the user see "Parent Thread: IsThreadAutotest" displayed on search results

 @AnotherUserCreationOnThread
 Scenario: Brain Reaction On Thread
   Given the user logged in as "brian"
   Then the browser opened at item "forum" and tab ""
   And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
   And the user want to click on title "itemTitle" and process
   Then the user see title "IsThreadAutotest" is displayed
   And the user click on button "reactionButton"
   Then the user see label of action "reactionResult" is displayed

  @BrianEditThread
  Scenario: Brain Edit Thread
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "edit" and process
    Then the user see title "Edit Thread" is displayed
    And the user see item of "Remove"
    Then the user see "Are you sure you want to delete this attachment file?" displayed success
    And the user want to "OK"
    Then the user don't see "Remove" displayed on screen

  @BrianMoveThreadToAnotherForum
  Scenario: Brain move thread to another forum
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "move" and process
    When the user want to select category at 4 on dropdown list "select-forum_id"
    And the user click on button "buttonSubmit"
    Then the user see message "Thread moved successfully." displayed
    And the user see title "IsThreadAutotest" is displayed
    Then the user see a element "Music" is displayed on detail

  @BrainCopyThreadWithDefaultTitle
  Scenario: Brain copy thread with default title
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "copy" and process
    Then the user see "Copy Thread" is displayed on user profile
    When the user action on input field "inputTitle" with value ""
    And the user want to "Copy"
    Then the user see message "Your thread copying progress is being processed. Please wait a few minutes." displayed
    When the user "new_notification" this item
    And the user click on notification "Your thread copying process has been success. Review now" and process
    Then the user see title "Copy - IsThreadAutotest" is displayed
    And the user click on button "actionMenuButton"
    And the user click on div "delete" and process
    Then the user see "Are you sure you want to delete this thread permanently?" displayed success
    And the user want to "OK"
    Then the user see message "Thread deleted successfully." displayed

  @BrainVerifyOnHistory
  Scenario: Brian verify on history
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab "/forum/history-thread"
    Then the user see a element "IsThreadAutotest" is displayed on detail

  @BrainClosedThread
  Scenario: Brian closed thread
    Given the user logged in as "brian"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
    When the user want to click on button label "actionMenu" and process
    And the user click on div "close" and process
    Then the user see message "Thread closed successfully." displayed
    And the user see "Closed" on tab
    When the user want to click on button label "actionMenu" and process
    And the user click on div "reopen" and process
    Then the user see message "Thread successfully reopened." displayed