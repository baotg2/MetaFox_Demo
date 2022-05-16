package pHpFox;

import net.masterthought.cucumber.json.support.Status;
import org.junit.Test;
import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import net.masterthought.cucumber.presentation.PresentationMode;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class TestReportHtmlCustom {

    @Test
    public void generateDemoReport(){
        File reportOutputDirectory = new File("src/report/Cucumber_reports");
        List<String> jsonFiles = new ArrayList<>();
        jsonFiles.add("target/MetaFox_V5/Cucumber_reports/MetaFox_Report.json");
        String buildNumber = "1";
        String projectName = "pHpDoemo";
        Configuration configuration = new Configuration(reportOutputDirectory, projectName);
        configuration.addPresentationModes(PresentationMode.RUN_WITH_JENKINS);
        configuration.setNotFailingStatuses(Collections.singleton(Status.SKIPPED));
        configuration.setBuildNumber(buildNumber);
        configuration.addClassifications("Platform", "Windows");
        configuration.addClassifications("Browser", "Firefox");
        configuration.addClassifications("Branch", "release/1.0");
        ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
        reportBuilder.generateReports();
    }
}