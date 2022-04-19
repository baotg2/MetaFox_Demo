package pHpFox.stepDefined;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import pHpFox.pageObject.Components;
import pHpFox.support.DataExcutor;
import pHpFox.support.IsComponentVisible;

public class PhotoStep {
    IsComponentVisible isComponentVisible = new IsComponentVisible();
    Components components = new Components();
    DataExcutor dataExcutor = new DataExcutor();
    @Then("the user want to add new album")
    public void addImage(){
        isComponentVisible.waitElement(By.xpath("//form[@data-testid ='form']"));
        components.componentButtonDataTestID("add_new_album").click();
        isComponentVisible.waitElement(By.xpath("//input[@data-testid ='inputNewAlbumName']"));
        components.componentInputDataTestID("inputNewAlbumName").sendKeys(dataExcutor.readConstants("Album"));
        components.textAreaDataTestID("inputNewAlbumDescription").sendKeys(dataExcutor.readConstants("Description"));
    }

}
