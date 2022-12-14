@app_poll @poll_onfeed @brian @previewSite
Feature:  Brian process polls on feed

  Scenario: Brian Add New Poll On Feed
    Given the user logged in as "brian"
    And the browser opened at "/"
    And within the content
    When the user adds poll on feed
    And within the basic
    When the user add on "inputPollQuestion" with value "IsThisAutoPoll"
    And the user add value "Yes" on element "1"
    And the user add value "No" on element "2"
    And the user want to "Done"
    Given within the status composer
    And the user clicks on button "submit"
    Given within the content
    Then the user sees text "added a poll"
    Then the user sees text "IsThisAutoPoll"

  Scenario: Brian Search Poll Created On Feed
    Given the user logged in as "brian"
    And the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    Given within the content
    And the user clicks on the item title
    Then the user sees text "IsThisAutoPoll"

  Scenario: Brain Delete Public Vote Poll Created On Feed
    Given the user logged in as "brian"
    And the browser opened at "/poll"
    And within the sidebar
    When the user searches with text "IsThisAutoPoll"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message