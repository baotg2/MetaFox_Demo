package pHpFox;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = {"src/test/java/pHpFox/feature"},
        glue = "pHpFox",
        tags = "@BrainDeleteBlogsJustAdded",
        plugin = {
                "html:target/result/",
                "pretty",
                "json:target/pHpFox_V5/Cucumber_reports/V5Report.json"
        },
        monochrome = true
)
public class Runner extends AbstractTestNGCucumberTests {

}
