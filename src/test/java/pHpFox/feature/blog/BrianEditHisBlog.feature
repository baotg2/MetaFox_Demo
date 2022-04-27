@pHpV5 @blogFunction_Brian
Feature:  Brian process on blogs item

@BrianEditHisBlog
Scenario: Brian Edit His Blog
Given the user logged in as "brian"
Then the browser opened at item "blog" and tab "/blog/my"
And the user see "My Blogs" is displayed
And the user click on "actionMenuButton" to access blog
And the user "edit" this item
Then the user see main form "form" is displayed
