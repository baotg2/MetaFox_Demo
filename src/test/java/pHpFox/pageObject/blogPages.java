package pHpFox.pageObject;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import pHpFox.conf.index;
import java.util.List;

public class blogPages extends index {
    private WebElement webElement;
    private List<WebElement> webElementList;


    By txt_title = By.xpath("//h1");
    By txt_titleBlog = By.xpath("//input[@name='title']");
    By txt_post = By.xpath("//div[@class='DraftEditor-root']");
    By btn_selectCategories = By.xpath("//button[@title='Open']");
    By txt_topic = By.id("tags-tags");
    By dropdown_choicesPrivacy = By.xpath("//div[text()='Everyone']");
    By search_blog = By.xpath("//div/form[@data-testid='formSearch']/div/input[@data-testid='searchBox']");
    By search_Result = By.xpath("//div/h4/a");
    By search_title = By.xpath("//div/h2");
    By span_dottedmore = By.xpath("//span[@class = 'ico-dottedmore-vertical-o ltr-1uo2akd']");
    By edit_blog = By.xpath("//span[text()= 'Edit']");
    By titleBlogAdded = By.xpath("//div[@data-testid='itemTitle']/h1");

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

    public WebElement btn_CreateNewBlog(WebDriver driver){
        webElement = driver.findElement(By.xpath("//a[text()='Create New Blog']"));
        return webElement;
    }

    public WebElement formUploadimage(WebDriver driver){
        webElement= driver.findElement(By.xpath("//input[@data-testid='inputFile']"));
        return webElement;
    }

    public WebElement search_blog(WebDriver driver){
        webElement = driver.findElement(search_blog);
        return webElement;
    }
    public WebElement searchResultTilte(WebDriver driver){
         webElement = driver.findElement(search_title);
         return webElement;
    }
    public List<WebElement> tableSearchResult(WebDriver driver){
        webElementList = driver.findElements(search_Result);
        return webElementList;
    }

    public WebElement select_more(WebDriver driver){
        webElement = driver.findElement(span_dottedmore);
        return webElement;
    }

    public WebElement edit_blog(WebDriver driver){
        webElement = driver.findElement(edit_blog);
        return webElement;
    }

    public WebElement titleBlogAdded(WebDriver driver){
        webElement = driver.findElement(titleBlogAdded);
        return webElement;
    }
}
