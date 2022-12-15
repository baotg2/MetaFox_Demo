@app_photo @photo_friend @brian @previewSite
Feature: Brian process on photos friend item

  Scenario: Brian Add New Photo Friends
    Given the user logged in as "brian"
    And the browser opened at "/photo/add"
    And within the content
    And the user want upload 1 photo
    And the user set privacy is Friends
    And the user clicks on button "buttonSubmit"
    And the user sees successful flash message

  Scenario: Brain Share Now On Photo Friend
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    When the user opens share menu
    And the user clicks on menu item "share_now"
    Then the user sees successful flash message

  Scenario: Another user access Brian profile and see Photo
    Given the user logged in as "terry"
    And the browser opened at "/"
    And within the header
    Then the user searches with text "brian"
    And within the content
    And the user clicks on link "/brian"
    Then the user sees text "shared a post to newsfeed "

  Scenario: Brain Feature Photos Friends
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    And the user opens action menu
    When the user clicks on menu item "feature"
    Then the user sees successful flash message


  Scenario: Brain UnFeature Photos Friends
    Given the user logged in as "brian"
    And the browser opened at "/photo/my"
    And within the content
    When the user get media details
    Given within the detail photo
    And the user opens action menu
    When the user clicks on menu item "unfeature"
    Then the user sees successful flash message