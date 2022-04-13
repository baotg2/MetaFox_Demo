package pHpFox.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;


public class sideMenuPage extends loginPage {
    private WebElement webElement;

    public WebElement parentMenuSide(WebDriver driver, String sideMenuName){
        webElement = driver.findElement(By.xpath("//div[@data-testid='"+sideMenuName+"']/a/div/span"));
        return webElement;
    }

    public WebElement childMenuSide(WebDriver driver, String childMenuName){
        webElement = driver.findElement(By.xpath("//a[contains(@href, '"+childMenuName+"')]"));
        return webElement;
    }

}


