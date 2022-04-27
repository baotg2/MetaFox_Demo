@pHpV5 @blogFunction_Brian
Feature:  Brian process on blogs item

@BrianSearchHisBlog
Scenario: Brian Search bla bla bla
Given the user logged in as "brian"
Then the browser opened at item "blog" and tab ""
And the user see search field "Search blogs" and typing keys "bla bla bla"
And the user access first condition "inputSort"
And the user access first condition "inputWhen"
Then the user see "No Results Found" is displayed on result table