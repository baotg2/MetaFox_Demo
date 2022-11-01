@app_blog
Feature:  Brian process on blogs is OnlyMe

  Scenario: Brian Add New Blog With Image With Privacy Is Only Me
    Given the user logged in as "brian"
    And the browser opened at "/blog/add"
    And within the content
    And the user adds title with value "BlogOnlyMe"
    And the user adds description
    And the user attaches a photo
    And the user adds a category
    And the user adds a tag
    And the user set privacy is Only Me
    And the user submits the form
    And the user sees successful flash message

  Scenario: Another User Search Blog Only Me
    Given the user logged in as "terry"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogOnlyMe"
    # next step
    Given within the content
    Then the user sees text "No blogs are found."


  Scenario: Brain Share Now On Blog OnlyMe Just Add
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the sidebar
    When the user searches with text "BlogOnlyMe"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user clicks on the item title
    And the user opens action menu


  Scenario: Brain Delete Blog OnlyMe Just Added
    Given the user logged in as "brian"
    And the browser opened at "/blog"
    And within the content
    When the user searches with text "BlogOnlyMe"
    And the user access first condition "inputSort"
    And the user access first condition "inputWhen"
    And the user opens action menu
    # verify
    Given within the content
    And  the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message