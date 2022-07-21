@MetaFox @core @brianProcessOnAccountSettings
Feature: Brain Process On Account Settings

  @BrainVerifySendFriendRequest
  Scenario: Brain Verify Send Friend Request
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can send me a friend request?" and change to "No One"
    Then the user see message "Updated successfully" displayed
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
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewHisFriendsList
  Scenario: Brain Verify View His Friends List
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "list?" and change to "No One"
    Then the user see message "Updated successfully" displayed
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
    Then the user see message "Updated successfully" displayed

  @BrianVerifyViewPostOnHisWall
  Scenario: Brian Verify View Post On His Wall
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can share a post on your wall?" and change to "No One"
    Then the user see message "Updated successfully" displayed
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
    Then the user see message "Updated successfully" displayed

  @BrianVerifyViewBasicInformation
  Scenario: Brian Verify View Basic Information
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your basic info?" and change to "No One"
    Then the user see message "Updated successfully" displayed
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
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewPhoto
  Scenario: Brian Verify View Photo
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view photos on your profile page?" and change to "No One"
    Then the user see message "Updated successfully" displayed
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
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewProfilePage
  Scenario: Brian Verify View Profile Page
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view your profile page?" and change to "No One"
    Then the user see message "Updated successfully" displayed
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
    Then the user see message "Updated successfully" displayed

  @BrainVerifyViewInfoTabOnProfilePage
  Scenario: Brian Verify Information Tab On Profile Page
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view the info tab on your profile page?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "terry"
    And the user see search field "Search ..." and typing keys "brian"
    And the user want to click on "/brian"
    Then the user don't see tab "about" on user profile
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can view the info tab on your profile page?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed

  @BrainVerifyTagByContext
  Scenario: Brian Verify Tag By Context
    Given the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can tag me in written contexts?" and change to "No One"
    Then the user see message "Updated successfully" displayed
    And I want to click on "Logout"
    Then the user logged in as "admin"
    And the user "whatsHappening" this item
    And the user click on button "statusTagFriendsButton"
    Then the user don't see user "brian" on tag list "itemTitle"
    And the user click on button "buttonDone"
    And the user click on button "buttonClose"
    And I want to click on "Logout"
    Then the user logged in as "brian"
    Then I want to click on "Account Settings"
    And the user back to "Your Profile" page
    And the user select privacy at field "Who can tag me in written contexts?" and change to "Anyone"
    Then the user see message "Updated successfully" displayed