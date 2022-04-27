@pHpV5 @blogFunction_Brian
Feature:  Brian process on blogs item

@BrainDeleteBlogsJustAdded
Scenario: Brain Delete Blog Just Added
Given the user logged in as "brian"
Then the browser opened at item "blog" and tab ""
And the user see search field "Search blogs" and typing keys "BlogName"
And the user access first condition "inputSort"
And the user access first condition "inputWhen"
And the user not see "No Results Found" is displayed on result table
And the user click on "actionMenuButton" to access blog
Then the user "delete" this item
And the user click on button "buttonSubmit"
Then the user see message "Blog deleted successfully." displayed