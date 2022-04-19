package pHpFox.stepDefined;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExcutor;
import pHpFox.support.IsComponentVisible;
import java.io.IOException;
import java.util.Objects;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static pHpFox.conf.Index.driver;


public class BlogStep {
    Components components = new Components();
    DataExcutor dataExcutor = new DataExcutor();
    IsComponentVisible isComponentVisible = new IsComponentVisible();
    @Then ("the user action on input field \"([^\"]*)\"$")
    public void inputValueOnField(String fieldName){
        isComponentVisible.waitElement(By.xpath("//input[@data-testid='inputTitle']"));
        components.componentInputDataTestID(fieldName).sendKeys(dataExcutor.readConstants("BlogName"));
    }
    @And("^the user (want to|don't) add photo$")
    public void actionAttachImage(String status) throws IOException {
        if (status.equals("want to")){
            components.componentInputDataTestID("inputFile").sendKeys(dataExcutor.getAlphaNumericString());
        }
    }
    @And("the user add value on div \"([^\"]*)\"$")
    public void inputValueOnDiv(String fieldName){
        components.componentDivRole(fieldName).sendKeys(dataExcutor.readConstants("Description"));
    }
    @And("the user click on button\"([^\"]*)\"$")
    public void clickOnButton (String buttonName){
        components.componentButtonDataTestID(buttonName).click();
    }

    @And("the user see message \"([^\"]*)\" displayed$")
    public void isMsgCreateSuccessDisplayed(String msg){
        isComponentVisible.waitElement(By.xpath("//div[text()='"+msg+"']"));
    }

    @And("^the user (want to|don't) add attach files$")
    public void actionAttachFile(String status) throws IOException, InterruptedException {
        if (status.equals("want to")) {
            components.componentInputDataTestID("inputAttachments").sendKeys(dataExcutor.getAlphaNumericString());
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
        if (components.componentDivDataTestID("itemTitle").getText().equals(dataExcutor.readConstants("BlogName"))){
            ass = true;
        }
        else {ass= false;}

        return ass;
    }

    @And("^the user see \"([^\"]*)\" is displayed$")
    public void myBlogIsDisplayed(String myBlogs){
        isComponentVisible.waitElement(By.xpath("//h2[text()='"+myBlogs+"']"));
        assertTrue(driver.findElement(By.xpath("//h2[text()='"+myBlogs+"']")).getText().equals(myBlogs));
    }

    @And("^the user click on \"([^\"]*)\" to access blog$")
    public void accessFirstBlog(String buttonName){
        isComponentVisible.waitElement(By.xpath("//button[@data-testid='"+buttonName+"']"));
         components.listButtonDataTestID(buttonName).get(0).click();
    }

    @And("^the user \"([^\"]*)\" this blogs")
    public void accessEditMainForm(String action){
        components.componentDivDataTestID(action).click();
        //isComponentVisible.waitElement(By.xpath("//h1[text()='Editing Blog']"));
    }

    @Then("^the user typing keys \"([^\"]*)\" on search field$")
    public void typingKeySearch(String keySearch){
        if (!Objects.equals(keySearch, "")){
            components.searchAttributes().sendKeys(keySearch);
        }
        else {
            components.searchAttributes().sendKeys(dataExcutor.readConstants("BlogName"));
        }
        //components.searchAttributes("input", "placeholder", "Search blogs").click();

        components.searchAttributes().sendKeys(Keys.ENTER);
    }

    @And("^the user (see|not see) \"([^\"]*)\" is displayed on result table$")
    public void seeMsgText(String status, String msgText) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//h2[text()='Search Results']"));
        if (status.equals("see")){
            isComponentVisible.waitElement(By.xpath("//div[@data-testid='noResultFound']"));
            assertEquals(components.componentDivDataTestID("noResultFound").getText(), msgText);
        }
        else {
            isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemBlog']"));
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
    public void addComment(String comment) throws InterruptedException {
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemMedia']"));
        components.componentDivDataTestID("itemMedia").click();
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemTitle']"));

        String inputText = comment;
        WebElement myElement = driver.findElement(By.xpath("//*[@id=\"root\"]/div[2]/div/div[2]/div/div/div/div/div/div[2]/div[5]/div[3]/form/div/div[2]/div/div[1]/div/div[2]/div/div/div/div/span"));
        String js = "arguments[0].setAttribute('value','"+inputText+"')";
        ((JavascriptExecutor) driver).executeScript(js, myElement);
        Thread.sleep(3);

    }
}
