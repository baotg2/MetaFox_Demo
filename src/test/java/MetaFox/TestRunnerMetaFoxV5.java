package MetaFox;

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
        features = {"src/test/java/MetaFox/testFeature"},
        glue = "MetaFox",
        tags = "@BrainAddNewForum",
        plugin = {
                "html:target/result/",
                "pretty",
                "json:target/MetaFox_V5/Cucumber_reports/MetaFox_Report.json",
                "io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm"
        },
        monochrome = true
)

public class TestRunnerMetaFoxV5 extends AbstractTestNGCucumberTests {
        // mvn test -Dcucumber.options="--plugin json:target/MetaFox_V5/Cucumber_reports/MetaFox_Report.json"  -Dcucumber.options="src/test/java/pHpFox/feature" -Dcucumber.filter.tags="@BrianCommentOnBlog"
}