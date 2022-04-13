package pHpFox;


import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = {"src/test/java/pHpFox/feature"},
        glue = "pHpFox",
        tags = "@pHpV5",
        plugin = {
                "html:target/result/",
                "pretty",
                "json:target/pHpFox_V5/Cucumber_reports/V5Report.json"
        },
        monochrome = true
)

public class runner extends AbstractTestNGCucumberTests {
}
