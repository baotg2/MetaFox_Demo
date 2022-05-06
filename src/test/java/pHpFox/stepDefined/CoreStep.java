package pHpFox.stepDefined;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExecutor;
import pHpFox.support.IsComponentVisible;

import static org.junit.Assert.assertTrue;

public class CoreStep {
    Components components = new Components();
    DataExecutor dataExecutor = new DataExecutor();
    IsComponentVisible isComponentVisible = new IsComponentVisible();

    @And("^the user see \"([^\"]*)\" on left menu$")
    public void isChildMenuItemDisplayed(String menuItemName){
        isComponentVisible.waitElement(By.xpath("//span[text()='"+menuItemName+"']"));
        assertTrue(components.componentSpanName(menuItemName).isDisplayed());
    }


    @Then("^the user want to edit \"([^\"]*)\"$")
    public void editInfoAccount(String fieldName){
        isComponentVisible.waitElement(By.xpath("//div[@data-testid = '"+fieldName+"']//button"));
        components.componentDivButton(fieldName).click();
    }
}