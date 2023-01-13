@app_photo @photo_onlyme @brian @previewSite
Feature: Brian process on photos only me item

  Scenario: Brian Add New Photo Only Me
    Given the user logged in as "brian1"
    And the browser opened at "/photo/add"
    And within the content
    And the user want upload 1 photo
    And the user set privacy is Only Me
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message

  Scenario: Brain Share Now On Photo OnlyMe Just Add
    Given the user logged in as "brian1"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    Then the user verify items "menuShareButton" not displayed on screen