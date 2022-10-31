package metafox.stepdefs;

import metafox.CucumberTestRunner;
import metafox.pageobjects.Components;
import metafox.support.DataProvider;
import metafox.support.IsComponentVisible;
import org.openqa.selenium.WebDriver;

public class StepDefinitions {

    protected Integer idOfLastImageBeforeUpload;

    public final WebDriver driver = CucumberTestRunner.getWebDriver();

    protected Components components = new Components();

    protected IsComponentVisible isComponentVisible = new IsComponentVisible();

    protected SupportStepDefinition stepDefinition = new SupportStepDefinition();

    protected DataProvider dataExecutor = new DataProvider();

    SupportStepDefinition supportStepDefinition = new SupportStepDefinition();

}
