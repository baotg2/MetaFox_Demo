@app_page @brian @previewSite @focus
Feature: Another User process on page app

  Scenario: Another User Search Page
    Given the user logged in as "katie"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    Then the user sees text "IsPageAutoTest"

  Scenario: Another User liked page
    Given the user logged in as "katie"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    And the user clicks on the item title
    Given within the slot top
    And the user "Like"
    Then the user sees button "Liked" on screen

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

  Scenario: Another User Share Page
    Given the user logged in as "katie"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    And the user clicks on the item title
    Given within the slot top
    And the user opens action menu
    And the user clicks on menu item "share"
    Given within the status composer
    And the user clicks on button "submit"
    Then the user sees successful flash message

  Scenario: Another User Verify Post Share On Feed
    Given the user logged in as "katie"
    And the browser opened at "/"
    And within the content
    Then the user sees text "IsPageAutoTest"
    And the user sees text "shared a post"

  Scenario: Another User Filters Categories On Page
    Given the user logged in as "katie"
    And the browser opened at "/page"
    And within the sidebar
    When the user searches with text "IsPageAutoTest"
    And within the content
    And the user clicks on the item title
    Given within the subside
    And the user clicks on link "/page/search"
    When within the content
    Then the user sees text "IsPageAutoTest"