@app_page @brian @wip
Feature: Another User process on page app

  Scenario: Another User liked page
    Given the user logged in as "katie"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    And the user clicks on the item title
    Given within the slot top

  Scenario: Another User Post On Page
    Given the user logged in as "katie"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    And the user clicks on the item title
    When the user "whatsHappening" this item
    And within the status composer
    And the user add comment "AutoPostStatusOnPage"
    And the user clicks on button "submit"
    Then the user sees successful flash message
    Then the user sees text "AutoPostStatusOnPage"
