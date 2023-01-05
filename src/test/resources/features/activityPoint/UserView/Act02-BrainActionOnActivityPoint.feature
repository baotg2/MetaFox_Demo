@app_activitypoint @brian
Feature:  Brain Action On Activity Point

  Scenario: Brain Verify Ui Activity Point
    Given the user logged in as "brian1"
    And the browser opened at "/activitypoint"
    And within the sidebar
    Then the user sees text "Point Transactions"
    And the user sees text "Point Packages "
    And the user sees text "How To Earn "
    And the user sees text "Transaction History"

  Scenario: Brian Verify UIView All Transactions History
    Given the user logged in as "brian1"
    And the browser opened at "/"
    When I want to click on "Activity Points"
    And the browser opened at "/activitypoint"
    And within the content
    And the user clicks on element link text a "View All Transactions"
    Then the user sees text "Transactions History"