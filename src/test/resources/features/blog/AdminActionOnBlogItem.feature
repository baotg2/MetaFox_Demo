@app_blog @user_admin
Feature:  Admin process on blogs app

  Scenario: Admin can add a new blog
    Given the user logged in as "brian"
    And the browser opened at "/blog/add"
    And within the content
    When the user types a sentence in field title
    And the user add value on div "textbox"
    And the user submits the form
    Then the user sees successful flash message


  Scenario: Admin can edit his own blogs
    Given the user logged in as "admin"
    And the browser opened at "/blog/my"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "edit"
    Then the user sees page url contains "/blog/edit/"

  Scenario: Admin must confirm deleting item
    Given the user logged in as "admin"
    And the browser opened at "/blog/all"
    And within the content
    # chain
    When the user opens action menu
    And the user clicks on menu item "delete"
    Then the user sees confirm popup
    And the user rejects the confirm
    # chain accept
    When the user opens action menu
    And the user clicks on menu item "delete"
    Then the user sees confirm popup
    When the user accepts the confirm


  Scenario: Admin can delete a blog item
    Given the user logged in as "admin"
    And the browser opened at "/blog/all"
    And within the content
    When the user opens action menu
    And the user clicks on menu item "delete"
    And the user accepts the confirm
    Then the user sees successful flash message