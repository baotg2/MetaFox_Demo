@app_quizzes @admin @previewSite
Feature:  Admin process on quizzes app

  Scenario: Admin Sees Pending Quizzes
    Given the user logged in as "admin"
    When the browser opened at "/quiz"
    And within the sidebar
    Then the user clicks on link "/pending"

  Scenario: Admin Action On Random Quizzes
    Given the user logged in as "admin"
    When the browser opened at "/quiz"
    And within the content
    And the user opens action menu
    When the user clicks on menu item "edit"
    Then the user sees text "Edit Quiz"

  Scenario: Admin Edits Random Quizzes
    Given the user logged in as "admin"
    When the browser opened at "/quiz"
    And within the content
    And the user opens action menu
    When the user clicks on menu item "edit"
    And the user want upload 1 photo
    When the user submits the form
    Then the user sees successful flash message