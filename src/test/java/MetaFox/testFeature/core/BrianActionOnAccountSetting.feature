@MetaFox @core @brianProcessOnAccountSettings
Feature: Brain Process On Account Settings

  @BrainAccessSettings
  Scenario: Brain Access Settings
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user see "General" on left menu
    And the user see "Payment" on left menu
    And the user see "Your Profile" on left menu
    And the user see "Invisible Mode" on left menu
    And the user see "Sharing Items" on left menu
    And the user see "Email Notifications" on left menu
    And the user see "Blocked Users" on left menu
    And the user see "Profile Menu" on left menu

  @BrainVerifySendFriendRequest
  Scenario: Brain Verify Send Friend Request
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can send me a friend request?" and change to "No One"
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see button "Message" is displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can send me a friend request?" and change to "Anyone"

  @BrainVerifyViewHisFriendsList
  Scenario: Brain Verify View His Friends List
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "list?" and change to "No One"
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    And the user want to access items "friend" on user profile
    Then the user see message "No Friends" displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "list?" and change to "Anyone"

  @BrianVerifyViewPostOnHisWall
  Scenario: Brian Verify View Post On His Wall
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can share a post on your wall?" and change to "No One"
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user don't see "whatsHappening" is displayed
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can share a post on your wall?" and change to "Friends Only"

  @BrianVerifyViewBasicInformation
  Scenario: Brian Verify View Basic Information
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your basic info?" and change to "No One"
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "No Content" is displayed on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your basic info?" and change to "Anyone"

  @BrainVerifyViewPhoto
  Scenario: Brian Verify View Photo
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view photos on your profile page?" and change to "No One"
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    And the user want to access items "photo" on user profile
    Then the user see "No Photos" is displayed on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Anyone"

  @BrainVerifyViewProfilePage
  Scenario: Brian Verify View Profile Page
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your profile page?" and change to "No One"
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user see "Profile is private" on left menu
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view photos on your profile page?" and change to "Anyone"