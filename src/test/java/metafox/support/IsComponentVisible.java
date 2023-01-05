package metafox.support;

import metafox.CucumberTestRunner;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import java.time.Duration;
import java.util.Random;


/**
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 *
 * @version 1.0.1
 * ---------------------------------------------------------------------------------------------------------------------------------------------
 * @Author baotg2
 * @purpose: IsComponentVisible is class defined steps to wait element until displayed
 * @since 04-05-2022
 */
public class IsComponentVisible {

    private final WebDriver driver = CucumberTestRunner.getWebDriver();

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @purpose constructor of IsComponentVisible
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public IsComponentVisible() throws InterruptedException {
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param webElement is element want to wait
     * @purpose wait element displayed about 2min
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public void waitElement(By webElement) {
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(15));
        Assert.assertTrue(driver.findElements(webElement).size() > 0);
    }

    /**
     * -----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param number is max length random
     * @return value random
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-29-2022
     */
    public int randomNumber(int number) {
        Random random = new Random();
        int result;
        result = random.nextInt(number);
        return result;
    }
}