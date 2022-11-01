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
        plugin = {
                "pretty",
                "io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm",
                "metafox.plugin.TestCaseParameter"
        },
        monochrome = true
)
public class TestNGCucumberTests extends AbstractTestNGCucumberTests {
    // mvn -Dcucumber.filter.tags="@admin and @app_blog"
}