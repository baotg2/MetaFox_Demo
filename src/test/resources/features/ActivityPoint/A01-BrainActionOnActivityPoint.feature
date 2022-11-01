@app_activitypoint
Feature:  Brain Action On Activity Point

  Scenario: Brain Verify Ui Activity Point
    Given the user logged in as "brian"
    And the browser opened at "/activitypoint"
    And within the sidebar
    Then the user sees text "Point Transactions"
    And the user sees text "Point Packages "
    And the user sees text "How To Earn "
    And the user sees text "Transaction History "

  @BrainVerifyUIViewAllTransactionsHistoryView
  Scenario: Brian Verify UIView All Transactions History
    Given the user logged in as "brian"
    When I want to click on "Activity Points"
    Then the user sees text "Point Transactions"
    And the user clicks on element link text a "View All Transactions"
    Then the user sees text "Transactions History"

  @admincp
  Scenario: Admin Add New Package
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Activity Point"
    When the user want to "Add New Package"
    And the user adds title with value "AutoPackagePoint"
    And the user clicks on input field "amount" with value "1"
    And the user clicks on input field "price.USD" with value "1"
    And the user clicks on input field "price.EUR" with value "2"
    And the user clicks on input field "price.GBP" with value "3"
    And the user clicks on button "buttonSubmit"
    Then the user sees successful flash message

  @AdminMangePointPackage
  Scenario: Admin Manage Point Package
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Activity Point"
    When the user want to "Manage Packages"
    And the user clicks on input field "q" with value "AutoPackagePoint"
    When the user want to "Search"
    Then the user sees text "AutoPackagePoint "
    And the user want to click on button label "Options" and process
    And the user sees item of "Edit"
    Then the user sees text "Edit Package "
    When the user clicks on button "buttonCancel"

  @AdminChangePointSettingOnBlog
  Scenario: Admin Change Point Settings On Blog
    Given the user logged in as "admin"
    And the browser opened at "/"
    When the browser will get Administrator URL
    And the user clicks on "App Settings"
    And the user clicks on "Activity Point"
    When the user want to "Point Settings"
    And the user add value on "select-module_id" is "Blog"
    And the user clicks on button "buttonSubmit"
    And the user want to click on button label "Options" and process
    And the user sees item of "Edit"
    When the user clicks on input field "points" with value "1"
    And the user clicks on input field "max_earned" with value "10"
    And the user want to "Save Changes"

  @BrianActionOnActivityPoint
  Scenario: Brian Action On Activity Point
    Given the user logged in as "brian"
    And the browser opened at "/"
    When I want to click on "Activity Points"
    And the user clicks on "Transaction History"
    Then the user sees text "App" displayed
    When the user back to "linkLogo" page
    When the user clicks on "More"
    Then the browser opened at item "blog" and tab "/blog/add"
    Then the user adds title with value "Brian Blogs"
    Then the user don't add photo
    And the user adds description
    And the user attaches a photo
    And the user adds a category
    And the user adds a tag
    And the user submits the form
    And the user sees successful flash message
    Then the user verify title of blog is displayed
    When I want to click on "Activity Points"
    And the user clicks on "Transaction History"
    When the user want to refresh page before handle the action
    Then the user sees text "Blogs "
    Then the user sees text "1 "
    Then the user sees text "Publish a new blog "
    Then the user sees text "Earned "

