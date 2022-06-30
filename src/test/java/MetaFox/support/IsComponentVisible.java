package MetaFox.support;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import MetaFox.browserConfig.Index;

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
    public void waitElement(By webElement) {
        WebDriverWait wait = new WebDriverWait(Index.getDriver(), 120);
        wait.until(ExpectedConditions.presenceOfElementLocated(webElement));
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