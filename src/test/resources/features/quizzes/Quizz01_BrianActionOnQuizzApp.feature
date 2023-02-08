@app_quizzes @brian @previewSite
Feature:  Brian process on quizzes app

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
    When the user want to scroll to the end of page
    And the user submits the form
    Then the user sees successful flash message

  Scenario: Another User Plays Quizzes
    Given the user logged in as "admin"
    And the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    Given within the content
    And the user clicks on the item title
    When the user plays Quizzes
    And the user "Submit"
  
  Scenario: Brian Plays Quizzes
    Given the user logged in as "brian1"
    And the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    Given within the content
    And the user clicks on the item title
    When the user plays Quizzes
    And the user "Submit"

  Scenario: Brian Verify Total Played Quizzes
    Given the user logged in as "brian1"
    And the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    Given within the content
    And the user clicks on the item title
    Then the user sees text "2 plays"

  Scenario: Admin Feature Quizzes Just Add
    Given the user logged in as "admin"
    And the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    And the user clicks on menu item "feature"
    Then the user sees successful flash message
    And the user sees flag featured

  Scenario: Admin Un-Feature Quizzes Just Add
    Given the user logged in as "admin"
    And the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    And the user clicks on menu item "unfeature"
    Then the user sees successful flash message

  Scenario: Admin Edit Quizzes Just Add
    Given the user logged in as "admin"
    And the browser opened at "/quiz"
    And within the sidebar
    When the user searches with text "IsAutoQuiz"
    Given within the content
    And the user clicks on the item title
    When the user opens action menu
    And the user clicks on menu item "edit"
    When the user adds title with value "UpdateTestAutoQuizzes"
    When the user want to scroll to the end of page
    And the user submits the form
    Then the user sees page url matches "/quiz/\d+"
    And the user sees successful flash message

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