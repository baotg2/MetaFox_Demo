package pHpFox.conf;


import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.DesiredCapabilities;;
import org.openqa.selenium.remote.RemoteWebDriver;
import pHpFox.support.DataExcutor;

import java.net.MalformedURLException;
import java.net.URL;

public class Index {
    public static WebDriver driver;
    public static String selectPlatform;
    public static String AUTOMATE_USERNAME = "baotran_moYtnK";
    public static String AUTOMATE_ACCESS_KEY = "2cnCJbmwkKAmmb9hEVsN";
    public static String URL = "https://" + AUTOMATE_USERNAME + ":" + AUTOMATE_ACCESS_KEY + "@hub-cloud.browserstack.com/wd/hub";

    DataExcutor dataExcutor = new DataExcutor();

    public void openBrowser(String browserName, String selectPlatform) throws MalformedURLException {
        Index.selectPlatform = selectPlatform;
        switch (selectPlatform){
            case "browserStack":
                DesiredCapabilities caps = new DesiredCapabilities();
                caps.setCapability("os_version", "10");
                //caps.setCapability("resolution", "");
                caps.setCapability("browser", browserName);
                caps.setCapability("browser_version", "latest");
                caps.setCapability("os", "Windows");
                caps.setCapability("name",dataExcutor.readConstants("TestCaseRunner")); // test name
//                caps.setCapability("build", "Process on Blogs"); // CI/CD job or build name
                caps.setCapability("browserstack.debug", "true");
                driver= new RemoteWebDriver(new URL(URL), caps);
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
        driver.get(dataExcutor.URL_PHP_V5);
        driver.manage().window().maximize();
    }
}
