package pHpFox.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import pHpFox.conf.index;

public class blogPages extends index {
    private WebElement webElement;
    By txt_title = By.xpath("//h1");
    By txt_titleBlog = By.xpath("//input[@name='title']");
    By txt_post = By.className("rdw-editor-main");
    By btn_selectCategories = By.xpath("//button[@title='Open']");
    By txt_topic = By.id("tags-tags");
    By dropdown_choicesPrivacy = By.xpath("//div[text()='Everyone']");
    By btn_pushlish =By.id("mui-51");
    By btn_saveAsDraf= By.id("mui-52");
    By btn_Cancel = By.xpath("//button[@data-testid='buttonCancel']");

    public WebElement txt_addnewBlog(WebDriver driver){
        webElement = driver.findElement(txt_title);
        return webElement;
    }

    public WebElement txt_titleBlog(WebDriver driver){
        webElement = driver.findElement(txt_titleBlog);
        return webElement;
    }

    public WebElement btn_add(WebDriver driver, String elementName){
        webElement = driver.findElement(By.xpath("//button[text()='"+elementName+"']"));
        return webElement;
    }

    public WebElement txt_post(WebDriver driver){
        webElement = driver.findElement(txt_post);
        return webElement;
    }

    public WebElement btn_selectCategories(WebDriver driver){
        webElement = driver.findElement(btn_selectCategories);
        return webElement;
    }
    public WebElement txt_topic(WebDriver driver){
        webElement = driver.findElement(txt_topic);
        return webElement;
    }

    public WebElement dropdown_choice_privacy(WebDriver driver){
        webElement = driver.findElement(dropdown_choicesPrivacy);
        return webElement;
    }

    public WebElement btn_Pushlish(WebDriver driver){
        webElement = driver.findElement(btn_pushlish);
        return webElement;
    }

    public WebElement btn_SaveAsDraf(WebDriver driver){
        webElement = driver.findElement(btn_saveAsDraf);
        return webElement;
    }
    public WebElement btn_cancel(WebDriver driver){
        webElement = driver.findElement(btn_Cancel);
        return webElement;
    }

    public WebElement btn_CreateNewBlog(WebDriver driver){
        webElement = driver.findElement(By.xpath("//a[text()='Create New Blog']"));
        return webElement;
    }
}
