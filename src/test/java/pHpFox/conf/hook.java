package pHpFox.conf;

import org.openqa.selenium.firefox.FirefoxDriver;

public class hook extends index{
    public void tearDown() throws InterruptedException {
        driver.quit();
        iWaitForSeconds(3);
    }

    public void setUp(){
        System.setProperty("webdriver.gecko.driver", "src/test/java/pHpFox/driver/geckodriver.exe");
        driver = new FirefoxDriver();
        driver.manage().window().maximize();
    }
}
