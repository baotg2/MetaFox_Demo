package MetaFox.browserConfig;

import io.cucumber.java.*;
import org.jetbrains.annotations.NotNull;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import MetaFox.support.EnumDataValue;

import java.net.MalformedURLException;

/**---------------------------------------------------------------------------------------------------------------------------------------------
 * @since 04-05-2022
 * @Author  baotg2
 * @purpose Hook is class set up before and after execute tests
 * @package browserConfig
 ---------------------------------------------------------------------------------------------------------------------------------------------*/
public class Hook{
    Index index = new Index(Index.getDriver());

    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @purpose setUp is function call browsers will execute before every scenario
     -----------------------------------------------------------------------------------------------------------------------------------------*/
    @Before
    public void setUp() throws MalformedURLException {
        index.openBrowser( EnumDataValue.FIREFOX, EnumDataValue.LOCAL);
    }
    /**-----------------------------------------------------------------------------------------------------------------------------------------
     * @since 04-05-2022
     * @purpose regardless of whether the scenario finishes successfully. If "fail" create screenshot
     * @param scenario this is param to get status of test cases
     -----------------------------------------------------------------------------------------------------------------------------------------*/
    @After
    public void after(@NotNull Scenario scenario) throws InterruptedException {
        if (scenario.isFailed()){
            final byte[] screenshot = ((TakesScreenshot)Index.getDriver()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot,"image/png", "");
        }
        Thread.sleep(3000);
        Index.getDriver().quit();
    }
}
