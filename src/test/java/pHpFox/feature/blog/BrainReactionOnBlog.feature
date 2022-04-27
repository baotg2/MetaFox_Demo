@pHpV5 @blogFunction_Brian
Feature:  Brian process on blogs item

@BrianReactionOnBlogJustAdd
Scenario: Brain Delete Blog Just Added
Given the user logged in as "brian"
Then the browser opened at item "blog" and tab ""
And the user see search field "Search blogs" and typing keys "BlogName"
And the user access first condition "inputSort"
And the user access first condition "inputWhen"
And the user not see "No Results Found" is displayed on result table
And the user access this blog by "itemMedia" and process
And the user click on button "reactionButton"