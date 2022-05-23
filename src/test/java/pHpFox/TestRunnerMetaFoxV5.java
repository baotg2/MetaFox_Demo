package pHpFox;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = {"src/test/java/pHpFox/feature"},
        glue = "pHpFox",
        tags = "@VisitorRegisterNewAccountWithShortPassword",
        plugin = {
                "html:target/result/",
                "pretty",
                "json:target/MetaFox_V5/Cucumber_reports/MetaFox_Report.json"
        },
        monochrome = true
)
public class TestRunnerMetaFoxV5 extends AbstractTestNGCucumberTests {
 //mvn test -Dcucumber.options="src/test/java/pHpFox/feature" -Dcucumber.options="--tags @BrainAddNewPhoto" -Dcucumber.options="--plugin json:target/MetaFox_V5/Cucumber_reports/MetaFox_Report.jso
        // mvn test -Dcucumber.options="--plugin json:target/MetaFox_V5/Cucumber_reports/MetaFox_Report.json"  -Dcucumber.options="src/test/java/pHpFox/feature" -Dcucumber.filter.tags="@BrianCommentOnBlog"
}