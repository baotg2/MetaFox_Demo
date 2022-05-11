package pHpFox;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = {"src/test/java/pHpFox/feature"},
        glue = "pHpFox",
        tags = "@BrainVerifyViewHisFriendsList",
        plugin = {
                "html:target/result/",
                "pretty",
                "json:target/MetaFox_V5/Cucumber_reports/MetaFox_Report.json"
        },
        monochrome = true
)
public class runnerTestMetaFoxV5 extends AbstractTestNGCucumberTests {

}