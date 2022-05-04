package pHpFox.stepDefined;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.LocalFileDetector;
import org.openqa.selenium.remote.RemoteWebElement;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExecutor;
import pHpFox.support.IsComponentVisible;
import java.io.IOException;


import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static pHpFox.conf.Index.driver;
import static pHpFox.conf.Index.selectPlatform;


public class BlogStep {
    Components components = new Components();
    DataExecutor dataExecutor = new DataExecutor();
    IsComponentVisible isComponentVisible = new IsComponentVisible();
    @Then ("the user action on input field \"([^\"]*)\" with value \"([^\"]*)\"$")
    public void inputValueOnField(String fieldName, String value){
        isComponentVisible.waitElement(By.xpath("//input[@data-testid='"+fieldName+"']"));
        if (value.equals("BlogName"))
        {
            components.componentInputDataTestID(fieldName).sendKeys(dataExecutor.readConstants(value));
        }
        else {
            components.componentInputDataTestID(fieldName).sendKeys(value);
        }
    }
    @And("^the user (want to|don't) add photo$")
    public void actionAttachImage(String status) {
        if (status.equals("want to")){
            if(selectPlatform.equals("browserStack")){
                WebElement upload = components.componentInputDataTestID("inputFile");
                ((RemoteWebElement) upload ).setFileDetector(new LocalFileDetector());
                upload.sendKeys(dataExecutor.getRandomPathDocuments());
            }
            else {
                components.componentInputDataTestID("inputFile").sendKeys(dataExecutor.getRandomPathDocuments());
            }
        }
    }
    @And("the user add value on div \"([^\"]*)\"$")
    public void inputValueOnDiv(String fieldName){
        components.componentDivRole(fieldName).sendKeys(dataExecutor.readConstants("Description"));
    }
    @And("the user click on button \"([^\"]*)\"$")
    public void clickOnButton (String buttonName){
        isComponentVisible.waitElement(By.xpath("//button[@data-testid ='"+buttonName+"']"));
        components.componentButtonDataTestID(buttonName).click();
    }

    @And("the user see message \"([^\"]*)\" displayed$")
    public void isMsgCreateSuccessDisplayed(String msg) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//div[text()='"+msg+"']"));
        Thread.sleep(3);
    }

    @And("^the user (want to|don't) add attach files$")
    public void actionAttachFile(String status) {
        if (status.equals("want to")) {
            if(selectPlatform.equals("browserStack")){
                WebElement upload = components.componentInputDataTestID("inputAttachments");
                ((RemoteWebElement) upload ).setFileDetector(new LocalFileDetector());
                upload.sendKeys(dataExecutor.getRandomPathDocuments());
            }
            else {
                components.componentInputDataTestID("inputAttachments").sendKeys(dataExecutor.getRandomPathDocuments());
            }
        }
    }

    @And ("the user want add categories is \"([^\"]*)\"$")
    public void actionOnCategoriesFiled(String value){
        components.componentInputDataTestID("inputCategories").sendKeys(value);
        components.componentInputDataTestID("inputCategories").sendKeys(Keys.ENTER);
    }

    @And("the user add topic is \"([^\"]*)\"$")
    public void actionOnTopicField(String value){
        components.componentInputID("tags-tags").sendKeys(value);
    }

    @Then ("the user verify title of blog is displayed")
    public boolean compareTitleBlogAdded(){
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemTitle']"));
        boolean ass;
        if (components.componentDivDataTestID("itemTitle").getText().equals(dataExecutor.readConstants("BlogName"))){
            ass = true;
        }
        else {ass= false;}

        return ass;
    }

    @And("^the user see \"([^\"]*)\" is displayed$")
    public void myBlogIsDisplayed(String myBlogs){
        isComponentVisible.waitElement(By.xpath("//h2[text()='"+myBlogs+"']"));
        assertEquals(driver.findElement(By.xpath("//h2[text()='" + myBlogs + "']")).getText(), myBlogs);
    }

    @Then("^the user see main form \"([^\"]*)\" is displayed$")
    public void seeMainForm(String formValue){
        isComponentVisible.waitElement(By.xpath("//form[@data-testid ='form']"));
        assertTrue(components.componentMainFormDataTestID(formValue).isDisplayed());
    }

    @And("^the user click on \"([^\"]*)\" to access blog$")
    public void accessFirstBlog(String buttonName){
        isComponentVisible.waitElement(By.xpath("//button[@data-testid='"+buttonName+"']"));
        components.componentListButtonDataTestID(buttonName).get(0).click();
    }

    @And("^the user \"([^\"]*)\" this item")
    public void accessEditMainForm(String action){
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='"+action+"']"));
        components.componentDivDataTestID(action).click();
    }

    @Then("^the user see search field \"([^\"]*)\" and typing keys \"([^\"]*)\"$")
    public void typingKeySearch(String attributes, String keySearch){
        if (keySearch.equals("BlogName") || keySearch.equals("Album")){
            components.componentSearchAttributes(attributes).sendKeys(dataExecutor.readConstants(keySearch));
        }
        else {
            components.componentSearchAttributes(attributes).sendKeys(keySearch);
        }

        components.componentSearchAttributes(attributes).sendKeys(Keys.ENTER);
    }

    @And("^the user (see|not see) \"([^\"]*)\" is displayed on result table$")
    public void seeMsgText(String status, String msgText) {
        if (status.equals("see")){
            isComponentVisible.waitElement(By.xpath("//div[@data-testid='noResultFound']"));
            assertEquals(components.componentDivDataTestID("noResultFound").getText(), msgText);
        }
        else {
            isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemText']"));
            assertTrue(components.componentDivDataTestID("itemText").isDisplayed());
        }
    }

    @And("the user access first condition \"([^\"]*)\"$")
    public void accessFirstCondition(String conditionName){
        isComponentVisible.waitElement(By.xpath("//input[@data-testid='"+conditionName+"']"));
        components.componentInputDataTestID(conditionName).click();
        components.componentInputDataTestID(conditionName).sendKeys(Keys.ENTER);
    }

    @Then("^the user add comment \"([^\"]*)\" on blog$")
    public void addComment(String comment) {
        WebElement myElement = driver.findElement(By.xpath("//*[@id=\"root\"]/div[2]/div/div[2]/div/div/div/div/div/div[2]/div[5]/div[3]/form/div/div[2]/div/div[1]/div/div[2]/div/div/div/div/span"));
        String js = "arguments[0].setAttribute('value','"+ comment +"')";
        ((JavascriptExecutor) driver).executeScript(js, myElement);
    }

    @And("^the user access this blog by \"([^\"]*)\" and process")
    public void accessBlogOnSearchResult(String itemName){
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='"+itemName+"']//a"));
        driver.findElement(By.xpath("//div[@data-testid='"+itemName+"']//a")).click();
    }
}
