package pHpFox.conf;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import pHpFox.support.DataExecutor;

import java.net.MalformedURLException;
import java.net.URL;

/**------------------------------------------------------------------------------------------------------------------------------------------------
 * @since 04-05-2022
 * @Author  baotg2
 * @purpose: Index is class set up before and after execute tests
 * @package conf
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
     * @param browserName is param to set open browser
     * @param selectPlatform is param to get test cases run on Platform
     * @throws MalformedURLException thrown when the built-in URL class encounters an invalid URL
     * @purpose openBrowser is a function to set up test cases run on local or cloud
     ------------------------------------------------------------------------------------------------------------------------------------------*/
    public void openBrowser(String browserName, String selectPlatform) throws MalformedURLException {
        Index.selectPlatform = selectPlatform;
        switch (selectPlatform) {
            case "browserStack":
                DesiredCapabilities caps = new DesiredCapabilities();
                caps.setCapability("os_version", "10");
                //caps.setCapability("resolution", "");
                caps.setCapability("browser", browserName);
                caps.setCapability("browser_version", "latest");
                caps.setCapability("os", "Windows");
                caps.setCapability("build", dataExecutor.readConstants("TestCaseRunner")); // test name
                caps.setCapability("name", "VisitorRegisterNewAccountWithShortPassword"); // CI/CD job or build name
                caps.setCapability("browserstack.debug", "true");
                driver = new RemoteWebDriver(new URL(URL), caps);
                break;
            case "local":
                if ("Firefox".equals(browserName)) {
                    System.setProperty("webdriver.gecko.driver", "src/test/java/pHpFox/driver/geckodriver.exe");
                    driver = new FirefoxDriver();
                    driver.manage().window().maximize();
                } else {
                    System.setProperty("webdriver.chrome.driver", "src/test/java/pHpFox/driver/chromedriver.exe");
                    driver = new ChromeDriver();
                    driver.manage().window().maximize();
                }
                break;
        }
        driver.get(dataExecutor.URL_PHP_V5);
        driver.manage().window().maximize();
    }
}
