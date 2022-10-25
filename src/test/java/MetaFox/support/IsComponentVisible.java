package MetaFox.support;

import MetaFox.browserConfig.Index;
import io.qameta.allure.Allure;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.testng.Assert;

import java.io.ByteArrayInputStream;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import static MetaFox.browserConfig.Index.driver;


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

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param driver is param
     * @purpose constructor of IsComponentVisible
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public IsComponentVisible(WebDriver driver) {
        Index.driver = driver;
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param webElement is element want to wait
     * @purpose wait element displayed about 2min
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     */
    public void waitElement(By webElement){
        driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
        Allure.addAttachment(webElement.toString(), new ByteArrayInputStream(((TakesScreenshot) Index.getDriver()).getScreenshotAs(OutputType.BYTES)));
        Assert.assertTrue(Index.getDriver().findElements(webElement).size() >0 );
    }

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     *
     * @param number is max length random
     * @return value random
     * @Author baotg2
     * -----------------------------------------------------------------------------------------------------------------------------------------
     * @since 06-29-2022
     */
    public int randomNumber(int number){
        Random random = new Random();
        int result;
        result  = random.nextInt(number);
        return result;
    }
}