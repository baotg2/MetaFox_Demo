package pHpFox.conf;

import io.cucumber.java.Scenario;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.firefox.FirefoxDriver;

public class hook extends index{
    @Before
    public void setUp(){
        System.setProperty("webdriver.gecko.driver", "src/test/java/pHpFox/driver/geckodriver.exe");
        driver = new FirefoxDriver();
        driver.manage().window().maximize();
    }
    @After
    public void after(Scenario scenario) throws InterruptedException {
        if (scenario.isFailed()){
            final byte[] screenshot = ((TakesScreenshot)driver).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot,"image/png", "");
        }
        Thread.sleep(3000);
        driver.quit();
    }


}
