package pHpFox.stepDefined;


import io.cucumber.java.en.Then;
import io.cucumber.java.en.And;
import org.openqa.selenium.By;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExcutor;
import pHpFox.support.IsComponentVisible;

import java.io.IOException;
import static org.junit.Assert.assertTrue;

public class AccessSideMenuStep{
    Components components = new Components();
    DataExcutor dataExcutor = new DataExcutor();
    IsComponentVisible isComponentVisible = new IsComponentVisible();

    @Then("I want to access {string}")
    public void iWantToAccessMenu(String module) throws InterruptedException, IOException {
        dataExcutor.setExcelFile(dataExcutor.excelPathFile, "pages");
        for(int i=1; i<=dataExcutor.getRowCountInSheet(); i++){
            if(dataExcutor.getCellData(i, 2).toLowerCase().equals(module)){
                components.componentDivDataTestID(module).click();
                assertTrue(components.componentLinkText(dataExcutor.getCellData(i,3)).isDisplayed());
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
        assertTrue(components.componentsDivMsg(msg).getText().equals(msg));
    }

}
