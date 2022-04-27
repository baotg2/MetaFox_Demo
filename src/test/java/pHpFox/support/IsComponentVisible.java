package pHpFox.support;

import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;


import static pHpFox.conf.Index.driver;

public class IsComponentVisible {
    public void waitElement(By webElement) {
        WebDriverWait wait = new WebDriverWait(driver,120);
        wait.until(ExpectedConditions.presenceOfElementLocated(webElement));
    }
    public void iWaitForSeconds(int seconds) throws InterruptedException {
        Thread.sleep(seconds * 1000L);
    }
}