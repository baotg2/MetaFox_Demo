package pHpFox.stepDefined;


import io.cucumber.java.en.Then;
import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExecutor;
import pHpFox.support.IsComponentVisible;

import java.io.IOException;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class AccessSideMenuStep{
    Components components = new Components();
    DataExecutor dataExecutor = new DataExecutor();
    IsComponentVisible isComponentVisible = new IsComponentVisible();

    @Then("I want to access {string}")
    public void iWantToAccessMenu(String module) throws IOException {
        dataExecutor.setExcelFile(dataExecutor.excelPathFile, "pages");
        for(int i = 1; i<= dataExecutor.getRowCountInSheet(); i++){
            if(dataExecutor.getCellData(i, 2).toLowerCase().equals(module)){
                components.componentDivDataTestID(module).click();
                assertTrue(components.componentLinkText(dataExecutor.getCellData(i,3)).isDisplayed());
                isBackToHomePage();
            }
        }
    }

    private void isBackToHomePage(){
        components.componentLinkDataTestID("linkLogo").click();
    }

    @And("^the user see \"([^\"]*)\" is displayed when not yet login$")
    public void msgDisplay(String msg){
        isComponentVisible.waitElement(By.xpath("//div[text()='"+msg+"']"));
        assertEquals(components.componentsDivMsg(msg).getText(), msg);
    }
}
