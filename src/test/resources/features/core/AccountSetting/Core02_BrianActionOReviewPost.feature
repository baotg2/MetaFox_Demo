@app_core @accountSetting @brian
Feature: Admin Process On Review Post
  
  Scenario: Admin Settings Review Post Is Manual
    Given the user logged in as "admin"
    And the browser opened at "/settings/review"
    When within the content
    And the user turn off setting "inputUserAutoAddTaggerPost"
    Then the user sees successful flash message

  Scenario: Brian User Tag Friend
    Given the user logged in as "brian1"
    And the browser opened at "/"
    Given within the status
    And the user opens status composer
    Given within the status composer
    When the user tags friend on feed
    And the user select friend to friend list
    And the user clicks on button "submit"