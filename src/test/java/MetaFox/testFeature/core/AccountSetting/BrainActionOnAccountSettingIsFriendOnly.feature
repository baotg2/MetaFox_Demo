@MetaFox @core @brianProcessOnAccountSettingsIsFriendOnly
Feature: Brain Process On Account Settings Is Friend Only

  @BrainAddFriend
  Scenario: Brain Add Friend
    Given the user logged in as "brian"
    Then the user see search field "Search ..." and typing keys "admin"
    And the user want to click on "/admin"
    And the user want to "Add Friend"
    Then I want to click on "Logout"
    And the user logged in as "admin"
    Then the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    And the user want to "Accept"
    Then the user see button "Un Friend" is displayed

  @BrainVerifyViewProfilePageIsFriendOnly
  Scenario: Brian Verify View Profile Page Is Friend Only
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your profile page?" and change to "Friends Only"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "Profile is private" on left menu
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see div element "whatsHappening" displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your profile page?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrianVerifyViewBasicInformationIsFriendOnly
  Scenario: Brian Verify View Basic Information Is Friend Only
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your basic info?" and change to "Friends Only"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "No Content" is displayed on user profile
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "No Content" is displayed on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your basic info?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewPhotoIsFriendOnly
  Scenario: Brian Verify View Photo Is Friends Only
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Friends Only"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    And the user want to access items "photo" on user profile
    Then the user see "No Photos" is displayed on user profile
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user want to access items "photo" on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed