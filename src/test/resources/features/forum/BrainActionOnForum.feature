@MetaFox @forum  @BrainActionOnForum
Feature:  Brian process on Forum

  @BrianAddNewForumWithEmptyValue
  Scenario: Brian Add New Forum With Empty Value
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user clicks on button "buttonSubmit"
    Then the user sees text "Title is required."
    Then the user sees text "Content is required. "

  @BrainAddNewForum
  Scenario: Brian Add New Forum
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab "/forum/thread/add"
    And the user add value on id "select-forum_id" is "General"
    When the user want to select category at 1 on dropdown list "select-forum_id"
    And the user adds title with value "IsThreadAutotest"
    And the user adds description
    And the user attaches a photo
    And the user adds a tag
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees text "IsThreadAutotest"

  @BrianVerifySubscribedThreads
  Scenario: Brian verified subscribed threads
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab "/forum/subscribed-thread"
    Then the user sees text "IsThreadAutotest"

  @AnotherUserReplyThread
  Scenario: Another User Reply Thread
    Given the user logged in as "terry"
    When the user clicks on "More"
    Then the browser opened at item "forum" and tab ""
    And the user searches with text "IsThreadAutotest"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user want to click on title "itemTitle" and process
    Then the user sees text "IsThreadAutotest"
    And the user adds description
    And the user attaches a photo
    When the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    Then the user sees div element "itemForumPost" displayed

 @BrianSearchReplies
 Scenario: Brain Search Replies
   Given the user logged in as "brian"
   When the user clicks on "More"
   Then the browser opened at item "forum" and tab ""
   And the user searches with text "TestAutoDescription"
   When the user want to select category at 1 on dropdown list "select-item_type"

 @AnotherUserCreationOnThread
 Scenario: Brain Reaction On Thread
   Given the user logged in as "brian"
   When the user clicks on "More"
   Then the browser opened at item "forum" and tab ""
   And the user searches with text "TestAutoDescription"
   And the user want to click on title "itemTitle" and process
   Then the user sees text "IsThreadAutotest"
   And the user clicks on button "reactionButton"
   Then the user sees label of action "reactionResult"

  @BrianEditThread
  Scenario: Brain Edit Thread
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user searches with text "TestAutoDescription"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Edit Thread"
    And the user sees item of "Remove"
    Then the user sees text "Are you sure you want to delete this attachment file?"
    And the user want to "OK"
    Then the user don't see "Remove" displayed on screen

  @BrianMoveThreadToAnotherForum
  Scenario: Brain move thread to another forum
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user searches with text "TestAutoDescription"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Move Thread"
    When the user want to select category at 4 on dropdown list "select-forum_id"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message
    And the user sees text "IsThreadAutotest"

  @BrainCopyThreadWithDefaultTitle
  Scenario: Brain copy thread with default title
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user searches with text "TestAutoDescription"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Copy Thread"
    Then the user sees text "Copy Thread "
    #When the user clicks on input field "inputTitle" with value ""
    And the user want to "Copy"
    Then the user sees successful flash message
    When the user "new_notification" this item
    And the user clicks on notification "Your thread copying process has been completed. Review now" and process
    Then the user sees text "Copy - IsThreadAutotest"
    And the user clicks on button "actionMenuButton"
    And the user clicks on "Delete Thread"
    Then the user sees text "Are you sure you want to delete this thread permanently?"
    And the user want to "OK"
    Then the user sees successful flash message

  @AdminStickThread
  Scenario: Admin Stick Thread
    Given the user logged in as "admin"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user searches with text "IsThreadAutotest"
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
    Then the user sees text "IsThreadAutotest"

  @BrainClosedThread
  Scenario: Brian closed thread
    Given the user logged in as "brian"
    When the user clicks on "More"
    When the browser opened at item "forum" and tab ""
    And the user searches with text "TestAutoDescription"
    When the user want to click on button label "Action Menu" and process
    And the user clicks on "Close Thread"
    And the user want to "OK"
    Then the user sees successful flash message
    And the user sees text "Closed" on tab
    When the user want to click on button label "actionMenu" and process
    And the user clicks on "Reopen Thread"
    Then the user sees successful flash message