package metafox.stepdefs;

import io.cucumber.java.After;
import io.cucumber.java.Scenario;
import io.qameta.allure.Allure;
import metafox.CucumberTestRunner;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;

import javax.annotation.Nonnull;

/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @Author baotg2
 * @purpose Hook is class set up before and after execute tests
 * @package browserConfig
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @since 04-05-2022
 */
public class Hook {


    private final WebDriver driver = CucumberTestRunner.getWebDriver();

    public Hook() throws InterruptedException {
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param scenario this is param to get status of test cases
     *                 -----------------------------------------------------------------------------------------------------------------------------------------
     * @purpose regardless of whether the scenario finishes successfully. If "fail" create screenshot
     * @since 04-05-2022
     */
    @After
    public void afterTest(@Nonnull Scenario scenario) throws InterruptedException {
        if (scenario.isFailed()) {
            final byte[] screenshot = ((TakesScreenshot) driver).getScreenshotAs(OutputType.BYTES);
            Allure.addByteAttachmentAsync("Failure Screenshot", "image/png", () -> screenshot);
        }
        Thread.sleep(3000);
        driver.quit();
    }
}
