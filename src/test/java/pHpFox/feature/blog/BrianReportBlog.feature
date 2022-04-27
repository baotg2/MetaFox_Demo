@pHpV5 @blogFunction_Brian
Feature:  Brian process on blogs item

@BrianReportBlog
Scenario: Brian Report Blog
Given the user logged in as "brian"
Then the browser opened at item "blog" and tab "/blog/all"
And the user see "All Blogs" is displayed
And the user click on "actionMenuButton" to access blog
And the user "report" this item
Then the user see main form "form" is displayed