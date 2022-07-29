# Meta_Fox_Demo

Meta_Fox_Demo is a project hanlde automation test of MetaFox on Web Platform
Technical used:

- Java
- TestNG
- Selenium
- BDD framework 
- Allure Report
- ✨Magic ✨

# Structure

- src/test/java: Test sources
- src/test/java/MetaFox: project folder
- src/test/java/MetaFox/browserConfig: include files set up browser before/after execute test
- src/test/java/MetaFox/testFeature: include files describe the tests in Descriptive language
- src/test/java/MetaFox/pageObject: contain elements on web pages
- src/test/java/MetaFox/stepDefined: defined test step using JAVA
- src/test/java/pHpFox/support: include files handle function related to test data
- src/test/java/pHpFox/testdata: include data files (excel, image, videos)

When deploy test case, need focus on pageObject and stepDefined. 
[The project structure be designed base on Page Object Model](https://www.guru99.com/page-object-model-pom-page-factory-in-selenium-ultimate-guide.html)
Element or funtions can re-use anywhere on this project

## Tech

Meta_Fox_Demo uses a number of open source projects to work properly:

- [Maven](https://maven.apache.org/) -3.8.5
- [Java](https://www.oracle.com/java/technologies/downloads/) - 1.8.0.11
- [node.js](https://nodejs.org/en/) - 16.14.2
- [Allure-framework](https://github.com/allure-framework) - the framework build report

And of course Meta_Fox_Demo itself is open source with a [private repository](https://github.com/baotg2/MetaFox_Demo)
 on GitHub.

## Installation

Meta_Fox_Demo requires 
- [Node.js](https://nodejs.org/) v10+ to run.
- [Java](https://www.oracle.com/java/technologies/downloads/) - 1.8.0.11

Install the dependencies and devDependencies and start the server.


For local variable...
| Variable | Guideline |
| ------ | ------ |
|install IDE |  https://www.jetbrains.com/idea/download/#section=windows - Community version|
|install Java | https://phoenixnap.com/kb/install-java-windows|
|install nodejs |https://phoenixnap.com/kb/install-node-js-npm-on-windows|
|install maven | https://mkyong.com/maven/how-to-install-maven-in-windows/|

For production environments...
|set-up Maven project | https://www.jetbrains.com/help/idea/delegate-build-and-run-actions-to-maven.html|

## Plugins

Meta_Fox_Demo is currently extended with the following plugins.
Instructions on how to use them in your own application are linked below.

| Plugin | README |
| ------ | ------ |
| Cucumber | https://github.com/baotg2/MetaFox_Demo/blob/master/pom.xml |
| Selenium-java | https://github.com/baotg2/MetaFox_Demo/blob/master/pom.xml |
| POI | https://github.com/baotg2/MetaFox_Demo/blob/master/pom.xml |
| junit | https://github.com/baotg2/MetaFox_Demo/blob/master/pom.xml |
| allure-maven | https://github.com/baotg2/MetaFox_Demo/blob/master/pom.xml |
| github action | https://github.com/baotg2/MetaFox_Demo/blob/master/.github/workflows/maven.yml

## Development

Want to contribute? Great!

Meta_Fox_Demo uses Selenium + Cumcumber for fast developing.
Make a change in your file and instantaneously see your updates!

Open your project on IntelliJ IDEA and deploy or modify the source code

Add test step:
Follow the test case structure. Will be develop on file.feature
```sh
Feature
    Scenario
        Given
        When
        And
        Then
```

#### Building for source

For IDE config:

```sh
Build Tools > Maven
    Maven Home | Bundled
    Setting files | <userPath>/.m2/settings.xml
    Local Respositories | <userPath>/.m2/repossitories
```

For the report

```sh
<allure.results.directory>target/allure-results</allure.results.directory>
```
#### Execute test case

Run on command lỉne

```sh
mvn test -Dcucumber.options="--plugin json:target/MetaFox_V5/Cucumber_reports/MetaFox_Report.json"  -Dcucumber.options="src/test/java/pHpFox/feature" -Dcucumber.filter.tags=""
```
Generate Report
```sh
allure serve allure-results
```
View report
```sh
http://192.168.12.72:53780/index.html
```
## License

BaoTG

**Free Source Code, Hell Yeah!**
