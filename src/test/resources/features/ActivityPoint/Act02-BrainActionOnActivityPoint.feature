@app_activitypoint @brian
Feature:  Brain Action On Activity Point

  Scenario: Brain Verify Ui Activity Point
    Given the user logged in as "brian"
    And the browser opened at "/activitypoint"
    And within the sidebar
    Then the user sees text "Point Transactions"
    And the user sees text "Point Packages "
    And the user sees text "How To Earn "
    And the user sees text "Transaction History "


  Scenario: Brian Verify UIView All Transactions History
    Given the user logged in as "brian"
    When I want to click on "Activity Points"
    Then the user sees text "Point Transactions"
    And the user clicks on element link text a "View All Transactions"
    Then the user sees text "Transactions History"

  Scenario: Brian Action On Activity Point
    Given the user logged in as "brian"
    And the browser opened at "/"
    When I want to click on "Activity Points"
    And the user clicks on "Transaction History"
    Then the user sees text "App" displayed
    When the user back to "linkLogo" page
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user adds title with value "Brian Blogs"
    Then the user don't add photo
    And the user adds description
    And the user attaches a photo
    And the user adds a category
    And the user adds a tag
    And the user submits the form
    And the user sees successful flash message
    Then the user verify title of blog is displayed
    When I want to click on "Activity Points"
    And the user clicks on "Transaction History"
    When the user want to refresh page before handle the action
    Then the user sees text "Blogs "
    Then the user sees text "1 "
    Then the user sees text "Publish a new blog "
    Then the user sees text "Earned "

