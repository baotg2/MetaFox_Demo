@app_activitypoint
Feature:  Brain Action On Activity Point

  Scenario: Brain Verify Ui Activity Point
    Given the user logged in as "brian"
    And the browser opened at "/"
    When I want to click on "Activity Points"
    Then the user see title h2 "Point Transactions" is displayed
    And the user see "Point Packages" on left menu
    And the user see "How To Earn" on left menu
    And the user see "Transaction History" on left menu

  @BrainVerifyUIViewAllTransactionsHistoryView
  Scenario: Brian Verify UIView All Transactions History
    Given the user logged in as "brian"
    When I want to click on "Activity Points"
    Then the user see title h2 "Point Transactions" is displayed
    And the user click on element link text a "View All Transactions"
    Then the user see title h2 "Transactions History" is displayed

  @admincp
  Scenario: Admin Add New Package
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Activity Point"
    When the user want to "Add New Package"
    And the user action on input field "title" with value "AutoPackagePoint"
    And the user action on input field "amount" with value "1"
    And the user action on input field "price.USD" with value "1"
    And the user action on input field "price.EUR" with value "2"
    And the user action on input field "price.GBP" with value "3"
    And the user clicks on button "buttonSubmit"
    Then the user sees flash message "Package has been created successfully." displayed

  @AdminMangePointPackage
  Scenario: Admin Manage Point Package
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Activity Point"
    When the user want to "Manage Packages"
    And the user action on input field "q" with value "AutoPackagePoint"
    When the user want to "Search"
    Then the user see "AutoPackagePoint" is displayed on user profile
    And the user want to click on button label "Options" and process
    And the user see item of "Edit"
    Then the user see "Edit Package" is displayed on user profile
    When the user clicks on button "buttonCancel"

  @AdminChangePointSettingOnBlog
  Scenario: Admin Change Point Settings On Blog
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user action on "App Settings"
    And the user action on "Activity Point"
    When the user want to "Point Settings"
    And the user add value on "select-module_id" is "Blog"
    And the user clicks on button "buttonSubmit"
    And the user want to click on button label "Options" and process
    And the user see item of "Edit"
    When the user action on input field "points" with value "1"
    And the user action on input field "max_earned" with value "10"
    And the user want to "Save Changes"

  @BrianActionOnActivityPoint
  Scenario: Brian Action On Activity Point
    Given the user logged in as "brian"
    And the browser opened at "/"
    When I want to click on "Activity Points"
    And the user action on "Transaction History"
    Then the user see h5 text "App" displayed
    When the user back to "linkLogo" page
    When the user action on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user action on input field "title" with value "Brian Blogs"
    Then the user don't add photo
    And the user add value on div "textbox"
    And the user attaches a photo
    And the user adds category "Education"
    And the user add value on "tags-tags" is "tag-tag"
    And the user clicks on button "buttonSubmit"
    And the user sees flash message "blogCreate" displayed
    Then the user verify title of blog is displayed
    When I want to click on "Activity Points"
    And the user action on "Transaction History"
    When the user want to refresh page before handle the action
    Then the user see "Blogs" is displayed on user profile
    Then the user see "1" is displayed on user profile
    Then the user see "Publish a new blog" is displayed on user profile
    Then the user see "Earned" is displayed on user profile

