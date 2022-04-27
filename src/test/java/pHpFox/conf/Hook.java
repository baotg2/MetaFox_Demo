package pHpFox.conf;

import io.cucumber.java.Scenario;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import org.jetbrains.annotations.NotNull;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import java.net.MalformedURLException;
import static pHpFox.conf.Index.driver;

public class Hook{
    Index index = new Index();
    @Before
    public void setUp() throws MalformedURLException {
        index.openBrowser( "Firefox", "local");
    }
    @After
    public void after(@NotNull Scenario scenario) throws InterruptedException {
        if (scenario.isFailed()){
            final byte[] screenshot = ((TakesScreenshot)driver).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot,"image/png", "");
        }

        Thread.sleep(3000);
        driver.quit();
    }
}
