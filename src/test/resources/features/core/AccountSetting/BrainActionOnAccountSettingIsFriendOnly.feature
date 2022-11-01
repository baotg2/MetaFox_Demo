@MetaFox @core @brianProcessOnAccountSettingsIsFriendOnly
Feature: Brain Process On Account Settings Is Friend Only

  @BrainVerifyViewProfilePageIsFriendOnly
  Scenario: Brian Verify View Profile Page Is Friend Only
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view your profile page?" and change to "Friends Only"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user sees text "Profile is private "
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user seesdiv element "whatsHappening" displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view your profile page?" and change to "Anyone"
    Then the user sees successful flash message

  @BrianVerifyViewBasicInformationIsFriendOnly
  Scenario: Brian Verify View Basic Information Is Friend Only
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view your basic info?" and change to "Friends Only"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user don't see "detailview profile detail about" is displayed
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user seestitle "About Me" is displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view your basic info?" and change to "Anyone"
    Then the user sees successful flash message


  @BrainVerifyViewPhotoIsFriendOnly
  Scenario: Brian Verify View Photo Is Friends Only
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Friends Only"
    Then the user sees successful flash message
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user not see a text "Photos" displayed on page
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user sees search field "Search" and typing keys "brian"
    And the user clicks on element link text a "Brian"
    Then the user want to access items "photo" on user profile
    Then the user seesdiv element "itemMedia" displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user clicks on "Your Profile"
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Anyone"
    Then the user sees successful flash message