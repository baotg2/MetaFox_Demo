package pHpFox.support;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import pHpFox.conf.Index;

public class IsComponentVisible {

    public IsComponentVisible(WebDriver driver){
        Index.driver = driver;
    }

    public void waitElement(By webElement) {
        WebDriverWait wait = new WebDriverWait(Index.getDriver(),120);
        wait.until(ExpectedConditions.presenceOfElementLocated(webElement));
    }
    public void iWaitForSeconds(int seconds) throws InterruptedException {
        Thread.sleep(seconds * 1000L);
    }
}