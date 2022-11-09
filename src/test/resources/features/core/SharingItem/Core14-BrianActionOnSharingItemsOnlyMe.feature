@app_core @sharingItem @brian
Feature: Brain Process On Sharing Items Only Me

  Scenario: Brain Verify Privacy Sharing Blogs
    Given the user logged in as "brian"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Blogs" and change to "Only Me"
    And the browser opened at "/blog/add"
    Then the user sees text "Only Me "
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Blogs" and change to "Everyone"

  Scenario:Brain Verify Privacy Feed Default Privacy
    Given the user logged in as "brian"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Feed default privacy" and change to "Only Me"
    Then the user sees successful flash message
    Then the user want to refresh page before handle the action
    And the user back to "linkLogo" page
    When the user "whatsHappening" this item
    Then the user sees text "Only Me"
    And the browser opened at "/settings/items"
    And within the content
    And the user select privacy at field "Feed default privacy" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Events
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Events" and change to "Only Me"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "event" and tab "/event/add"
    And the user want to scroll to the end of page
    Then the user sees text "Only Me "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Events" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Photos
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Photos" and change to "Only Me"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "photo" and tab "/photo/add"
    Then the user sees text "Only Me "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Photos" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Photos Albums
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Photo Albums" and change to "Only Me"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "photo" and tab "/photo/album/add"
    Then the user sees text "Only Me "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Photo Albums" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Polls
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Polls" and change to "Only Me"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "poll" and tab "/poll/add"
    Then the user sees text "Only Me "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Polls" and change to "Everyone"


#  Scenario: Brain Verify Privacy Sharing Quizzes
#    Given the user logged in as "brian"
#    Then I want to click on "Account Settings"
#    And the user back to "Sharing Items" page
#    And the user select privacy at field "Quizzes" and change to "Only Me"
#    Then the user sees successful flash message
#    And the user back to "linkLogo" page
#    When the user clicks on "More"
#    And the browser opened at item "quiz" and tab "/quiz/add"
#    Then the user sees text "Only Me "
#    Then I want to click on "Account Settings"
#    And the user back to "Sharing Items" page
#    And the user select privacy at field "Quizzes" and change to "Everyone"

  Scenario: Brain Verify Privacy Sharing Videos
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Videos" and change to "Only Me"
    Then the user sees successful flash message
    And the user back to "linkLogo" page
    When the user clicks on "More"
    And the browser opened at item "video" and tab "/video/share"
    Then the user sees text "Only Me "
    Then I want to click on "Account Settings"
    And the user clicks on "Sharing Items"
    And the user select privacy at field "Videos" and change to "Everyone"