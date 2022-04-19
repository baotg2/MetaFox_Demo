package pHpFox.conf;

import io.cucumber.java.Scenario;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;

import static pHpFox.conf.Index.driver;

public class Hook{
    Index index = new Index();
    @Before
    public void setUp(){
        index.openBrowser("FireFox");
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
