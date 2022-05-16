package pHpFox.stepDefined;


import io.cucumber.java.PendingException;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.LocalFileDetector;
import org.openqa.selenium.remote.RemoteWebElement;
import pHpFox.conf.Index;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExecutor;
import pHpFox.support.IsComponentVisible;
import java.io.IOException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static pHpFox.conf.Index.selectPlatform;

public class ThenStepDefinitions {
    Components components = new Components(Index.getDriver());
    IsComponentVisible isComponentVisible = new IsComponentVisible(Index.getDriver());
    DataExecutor dataExecutor = new DataExecutor();
    SupportStepDefinition supportStepDefinition = new SupportStepDefinition(Index.driver);

    @Then("I want to verified error message with user {string}, {string}")
    public void invalidUserCredentials(String userName, String passWord ) throws PendingException {
        isComponentVisible.waitElement(By.id("mui-1"));
        components.componentInputDataTestID("inputEmail").sendKeys(userName);
        components.componentInputDataTestID("inputPassword").sendKeys(passWord);
        components.componentButtonDataTestID("buttonLogin").click();
        isComponentVisible.waitElement(By.id("dialogDescription"));

    }

    @Then("^the user see error message \"([^\"]*)\" is displayed$")
    public boolean isErrMsgDisplayed(String mss){
        isComponentVisible.waitElement(By.xpath("//p[text() ='"+mss+"']"));
        assertEquals(Index.getDriver().findElement(By.xpath("//p[text() ='"+mss+"']")).getText(), mss);
        return true;
    }


    @Then("^the user want to edit \"([^\"]*)\"$")
    public void editInfoAccount(String fieldName){
        isComponentVisible.waitElement(By.xpath("//div[@data-testid = '"+fieldName+"']//button"));
        components.componentDivButton(fieldName).click();
    }

    @Then("the user want to add new album")
    public void addAlbum(){
        isComponentVisible.waitElement(By.xpath("//form[@data-testid ='form']"));
        components.componentButtonDataTestID("add_new_album").click();
        isComponentVisible.waitElement(By.xpath("//input[@data-testid ='inputNewAlbumName']"));
        components.componentInputDataTestID("inputNewAlbumName").sendKeys(dataExecutor.readConstants("Album"));
        components.componentTextAreaDataTestID("inputNewAlbumDescription").sendKeys(dataExecutor.readConstants("Description"));
    }

    @Then("the user want upload {int} photo")
    public void addPhoto(int numberOfImage) {
        isComponentVisible.waitElement(By.xpath("//form[@data-testid ='form']"));
        if(selectPlatform.equals("browserStack")){
            WebElement upload = components.componentInputType("file");
            ((RemoteWebElement) upload ).setFileDetector(new LocalFileDetector());
            upload.sendKeys(dataExecutor.getRandomPathDocuments());
            if(numberOfImage > 1){
                for (int i=0; i<numberOfImage; i++){
                    isComponentVisible.waitElement(By.xpath("//button[text() ='Add Photos']"));
                    upload.sendKeys(dataExecutor.getRandomPathDocuments());
                }
            }
        }
        else {
            components.componentInputType("file").sendKeys(dataExecutor.getRandomPathDocuments());
            if(numberOfImage > 1){
                for (int i=0; i<numberOfImage; i++){
                    isComponentVisible.waitElement(By.xpath("//button[text() ='Add Photos']"));
                    components.componentInputType("file").sendKeys(dataExecutor.getRandomPathDocuments());
                }
            }
        }
    }

    @Then ("^the user action on input field \"([^\"]*)\" with value \"([^\"]*)\"$")
    public void inputValueOnField(String fieldName, String value){
        isComponentVisible.waitElement(By.xpath("//input[@data-testid='"+fieldName+"']"));
        if (value.equals("BlogName") || (value.equals("Album")))
        {
            components.componentInputDataTestID(fieldName).clear();
            components.componentInputDataTestID(fieldName).sendKeys(dataExecutor.readConstants(value));
        }
        else {
            components.componentInputDataTestID(fieldName).clear();
            components.componentInputDataTestID(fieldName).sendKeys(value);
        }
    }

    @Then("I want to access {string}")
    public void iWantToAccessMenu(String module) throws IOException {
        dataExecutor.setExcelFile(dataExecutor.excelPathFile, "pages");
        for(int i = 1; i<= dataExecutor.getRowCountInSheet(); i++){
            if(dataExecutor.getCellData(i, 2).toLowerCase().equals(module)){
                components.componentDivDataTestID(module).click();
                assertTrue(components.componentLinkText(dataExecutor.getCellData(i,3)).isDisplayed());
                supportStepDefinition.isBackToHomePage();
            }
        }
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

    @Then("^the user add comment \"([^\"]*)\" on blog$")
    public void addComment(String comment) {
        components.componentDivRole("combobox").sendKeys(comment);
        components.componentDivRole("combobox").sendKeys(Keys.ENTER);
        isComponentVisible.waitElement(By.xpath("//p[text() = '"+comment+"']"));
        assertTrue(components.componentPText(comment).isDisplayed());
    }

    @Then("^the user see page \"([^\"]*)\" is displayed")
    public String getURL(String currentURL){
        assertTrue(Index.getDriver().getCurrentUrl().contains(currentURL));
        return currentURL;
    }

    @Then("^the user see button \"([^\"]*)\" is displayed$")
    public void isButtonDisplayed(String buttonName){
        isComponentVisible.waitElement(By.xpath("//button[text()='"+buttonName+"']"));
        assertTrue(components.componentButtonText(buttonName).isDisplayed());
    }

    @Then("the user verify title of blog is displayed")
    public void compareTitleBlogAdded(){
        isComponentVisible.waitElement(By.xpath("//div[@data-testid='itemTitle']"));
        components.componentDivDataTestID("itemTitle").getText().contains(dataExecutor.readConstants("BlogName"));
    }

    @Then("^the user see main form \"([^\"]*)\" is displayed$")
    public void seeMainForm(String formValue){
        isComponentVisible.waitElement(By.xpath("//form[@data-testid ='form']"));
        assertTrue(components.componentMainFormDataTestID(formValue).isDisplayed());
    }


}