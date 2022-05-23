package MetaFox.support;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import MetaFox.conf.Index;

public class IsComponentVisible {

    public IsComponentVisible(WebDriver driver) {
        Index.driver = driver;
    }

    public void waitElement(By webElement) {
        WebDriverWait wait = new WebDriverWait(Index.getDriver(), 120);
        wait.until(ExpectedConditions.presenceOfElementLocated(webElement));
    }
}