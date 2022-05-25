package MetaFox.browserConfig;

import org.openqa.selenium.Capabilities;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import MetaFox.support.DataExecutor;
import MetaFox.support.EnumDataValue;

import java.net.MalformedURLException;
import java.net.URL;

/**------------------------------------------------------------------------------------------------------------------------------------------------
 * @since 04-05-2022
 * @Author  baotg2
 * @purpose: Index is class set up browser
 * @package browserConfig
 * @version 1.0.1
 ------------------------------------------------------------------------------------------------------------------------------------------------*/
public class Index {
    public static WebDriver driver;
    public static String selectPlatform;
    public String AUTOMATE_USERNAME = "baotran_moYtnK";
    public String AUTOMATE_ACCESS_KEY = "2cnCJbmwkKAmmb9hEVsN";
    public String URL = "https://" + AUTOMATE_USERNAME + ":" + AUTOMATE_ACCESS_KEY + "@hub-cloud.browserstack.com/wd/hub";

    DataExecutor dataExecutor = new DataExecutor();

    public Index (WebDriver driver){
        Index.driver = driver;
    }

    /**-------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @Author  baotg2
     * @purpose getDriver is function to call the driver from another class
     -------------------------------------------------------------------------------------------------------------------------------------------*/
    public static WebDriver getDriver(){
       return driver;
    }

    /**------------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @param enumDataValue is param to set open browser
     * @param selectFlatForm is param to get test cases run on Platform
     * @throws MalformedURLException thrown when the built-in URL class encounters an invalid URL
     * @purpose openBrowser is a function to set up test cases run on local or cloud
     ------------------------------------------------------------------------------------------------------------------------------------------*/
    public void openBrowser(EnumDataValue enumDataValue, EnumDataValue selectFlatForm) throws MalformedURLException {
        Index.selectPlatform = String.valueOf(selectFlatForm);
        switch (selectFlatForm) {
            case BROWSERSTACK:
                DesiredCapabilities caps = new DesiredCapabilities();
                caps.setCapability("os_version", "10");
                caps.setCapability("browser", enumDataValue);
                caps.setCapability("browser_version", "latest");
                caps.setCapability("os", "Windows");
                caps.setCapability("build", dataExecutor.readConstants("TestCaseRunner")); // test name
                caps.setCapability("name", "VisitorRegisterNewAccountWithShortPassword"); // CI/CD job or build name
                caps.setCapability("browserstack.debug", "true");
                driver = new RemoteWebDriver(new URL(URL), caps);
                break;
            case LOCAL:
                //driver = new FirefoxDriver();
                FirefoxOptions opts = new FirefoxOptions();
                opts.addArguments("-private");
                driver = new FirefoxDriver(opts);
        }
        driver.get(dataExecutor.readConstants("URL"));
        driver.manage().window().maximize();
    }

    public void restApi_TestResult(){
        JavascriptExecutor jse = (JavascriptExecutor)driver;
        // Setting name of the test
        jse.executeScript("browserstack_executor: {\"action\": \"setSessionName\", \"arguments\": {\"name\":\"Java test \" }}");
    }
}
