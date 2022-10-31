package metafox;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: TestRunnerMetaFoxV5 is class to put @tag test case/test suite want to run
 * @since 04-05-2022
 */


@CucumberOptions(
        features = {"src/test/resources/features"},
        glue = "metafox",
        tags = "@focus",
        plugin = {
                "io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm",
                "metafox.plugin.TestCaseParameter",
                "html:reports/tests/cucumber/html",
                "timeline:reports/tests/cucumber/timeline",
                "junit:reports/tests/cucumber/junit/cucumber.xml",
                "testng:reports/tests/cucumber/testng/cucumber.xml",
                "json:reports/tests/cucumber/json/cucumber.json"
        },
        monochrome = true
)
public class TestNGCucumberTests extends AbstractTestNGCucumberTests {
    // mvn -Dcucumber.filter.tags="@admin and @app_blog"
}