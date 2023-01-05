package metafox;

import com.browserstack.local.Local;
import io.cucumber.testng.*;
import metafox.support.Utility;
import metafox.webdriver.LazyInitWebDriverIterator;
import metafox.webdriver.ManagedWebDriver;
import org.openqa.selenium.WebDriver;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.DataProvider;
import org.testng.annotations.Test;

import java.util.Iterator;

@CucumberOptions(
        features = {"src/test/resources/features"},
        glue = "metafox",
        tags = "@focus",
        plugin = {
                "pretty",
                "io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm",
                "metafox.plugin.TestCaseParameter"
        }
)
public class CucumberTestRunner {

    private TestNGCucumberRunner testNGCucumberRunner;
    private Local local;
    private static final ThreadLocal<ManagedWebDriver> threadLocalWebDriver = new ThreadLocal<>();

    @BeforeClass(alwaysRun = true)
    public void setUpClass() {
        testNGCucumberRunner = new TestNGCucumberRunner(this.getClass());
    }

    private synchronized static void setThreadLocalWebDriver(ManagedWebDriver managedWebDriver) {
        threadLocalWebDriver.set(managedWebDriver);
    }

    public synchronized static ManagedWebDriver getManagedWebDriver() {
        return threadLocalWebDriver.get();
    }

    public synchronized static WebDriver getWebDriver() throws InterruptedException {
        return getManagedWebDriver().getWebDriver();
    }

    @Test(groups = "cucumber", dataProvider = "scenarios")
    public void feature(PickleWrapper pickleWrapper, FeatureWrapper featureWrapper, ManagedWebDriver managedWebDriver) {
        if (Utility.isLocal(managedWebDriver) && local == null) {
            local = new Local();
            Utility.startLocal(local, managedWebDriver);
        }
        managedWebDriver.setTestName(pickleWrapper.getPickle().getName());
        setThreadLocalWebDriver(managedWebDriver);
        testNGCucumberRunner.runScenario(pickleWrapper.getPickle());
    }

    @DataProvider(name = "scenarios", parallel = true)
    public Iterator<Object[]> scenarios() {
        Object[][] scenarios = testNGCucumberRunner.provideScenarios();
        //Get Iterator of Object arrays consisting PickleWrapper, FeatureWrapper and ManagedWebDriver
        return new LazyInitWebDriverIterator(scenarios);
    }

    @AfterClass(alwaysRun = true)
    public void tearDownClass() {

        testNGCucumberRunner.finish();

    }

}
