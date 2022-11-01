@MetaFox @forum  @BrainActionOnForum
Feature:  Brian process on Forum

  @BrianAddNewForumWithEmptyValue
  Scenario: Brian Add New Forum With Empty Value
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user clicks on button "buttonSubmit"
    Then the user see "Title is required." displayed success
    Then the user see "Content is required." is displayed on user profile

  @BrainAddNewForum
  Scenario: Brian Add New Forum
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user clicks on input field "title" with value "IsThreadAutotest"
    And the user add value on div "textbox"
    And the user attaches a photo
    And the user add value on "tags-tags" is "tag-tag"
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user see title "IsThreadAutotest" is displayed

  @BrianVerifySubscribedThreads
  Scenario: Brian verified subscribed threads
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab "/forum/subscribed-thread"
    Then the user see a element "IsThreadAutotest" is displayed on detail

  @AnotherUserReplyThread
  Scenario: Another User Reply Thread
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    Then the user see title "IsThreadAutotest" is displayed
    And the user add value on div "textbox"
    And the user attaches a photo
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user see div element "itemForumPost" displayed

 @BrianSearchReplies
 Scenario: Brain Search Replies
   Given the user logged in as "brian"
   When the user clicks on "More"
   Then the browser opened at item "forum" and tab ""
   And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
   When the user want to select category at 1 on dropdown list "select-item_type"

 @AnotherUserCreationOnThread
 Scenario: Brain Reaction On Thread
   Given the user logged in as "brian"
   When the user clicks on "More"
   Then the browser opened at item "forum" and tab ""
   And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
   And the user want to click on title "itemTitle" and process
   Then the user see title "IsThreadAutotest" is displayed
   And the user clicks on button "reactionButton"
   Then the user see label of action "reactionResult" is displayed

  @BrianEditThread
  Scenario: Brain Edit Thread
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Edit Thread"
    And the user see item of "Remove"
    Then the user see "Are you sure you want to delete this attachment file?" displayed success
    And the user want to "OK"
    Then the user don't see "Remove" displayed on screen

  @BrianMoveThreadToAnotherForum
  Scenario: Brain move thread to another forum
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Move Thread"
    When the user want to select category at 4 on dropdown list "select-forum_id"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user see title "IsThreadAutotest" is displayed

  @BrainCopyThreadWithDefaultTitle
  Scenario: Brain copy thread with default title
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Copy Thread"
    Then the user see "Copy Thread" is displayed on user profile
    #When the user clicks on input field "inputTitle" with value ""
    And the user want to "Copy"
    Then the user sees successful flash message
    When the user "new_notification" this item
    And the user clicks on notification "Your thread copying process has been completed. Review now" and process
    Then the user see title "Copy - IsThreadAutotest" is displayed
    And the user clicks on button "actionMenuButton"
    And the user clicks on "Delete Thread"
    Then the user see "Are you sure you want to delete this thread permanently?" displayed success
    And the user want to "OK"
    Then the user sees successful flash message

  @AdminStickThread
  Scenario: Admin Stick Thread
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Stick Thread"
    Then the user sees successful flash message
    When the user want to click on button label "actionMenu" and process
    And the user clicks on "Unstick Thread"
    Then the user sees successful flash message

  @BrainVerifyOnHistory
  Scenario: Brian verify on history
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab "/forum/history-thread"
    Then the user see a element "IsThreadAutotest" is displayed on detail

  @BrainClosedThread
  Scenario: Brian closed thread
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user see search field "Search Discussions" and typing keys "TestAutoDescription"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Close Thread"
    And the user want to "OK"
    Then the user sees successful flash message
    And the user see "Closed" on tab
    When the user want to click on button label "actionMenu" and process
    And the user clicks on "Reopen Thread"
    Then the user sees successful flash message