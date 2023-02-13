@app_quizzes @brian @previewSite
Feature:  Brian process on quizzes is friend

  Scenario: Brian Adds New Quizzes With Empty Values
    Given the user logged in as "brian1"
    And the browser opened at "/quiz/add"
    Given within the content
    And the user submits the form
    Then the user sees text "Title is required."
    And the user sees text "Description is required."

  Scenario: Brian add new quizzes
    Given the user logged in as "brian1"
    And the browser opened at "/quiz/add"
    Given within the content
    And the user adds title with value "IsAutoQuiz"
    And the user adds description
    When the user add on "inputQuestionQuestions" with value "What is the maximum number of characters per question"
    And the user adds answers on question
    And the user set privacy is Friends
    When the user want to scroll to the end of page
    And the user submits the form
    Then the user sees successful flash message

  Scenario: Another User Searches Quizzes Is Not Friend
    Given the user logged in as "krixi1"
    When the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    And within the content
    Then the user sees text "No quizzes are found."

  Scenario: Another User Searches Quizzes Is Friend
    Given the user logged in as "terry1"
    When the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    And within the content
    Then the user sees text "IsAutoQuiz"

  Scenario: Admin Delete Quizzes Just Add
    Given the user logged in as "admin"
    And the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    And the user clicks on menu item "delete"
    Then the user accepts the confirm