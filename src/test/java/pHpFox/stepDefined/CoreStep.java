package pHpFox.stepDefined;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExecutor;
import pHpFox.support.IsComponentVisible;

import static org.junit.Assert.assertTrue;
import static pHpFox.conf.Index.driver;

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

    @And("the user select privacy at field \"([^\"]*)\" and change to \"([^\"]*)\"$")
    public void selectPrivacy(String fieldSetting, String valueChanged){
        isComponentVisible.waitElement(By.xpath("//div[@role ='button']"));
        for(int i =0; i < components.componentsSpanlist().size(); i++) {
            if (components.componentsSpanlist().get(i).getText().contains(fieldSetting)) {
                if(!components.componentsListDivRole("button").get(i).getText().equals(valueChanged))
                {
                    components.componentsListDivRole("button").get(i).click();
                    components.componentsDivMsg(valueChanged).click();
                }
                break;
            }
        }
    }
}