package metafox.support;

import metafox.stepdefs.StepDefinitions;
import org.openqa.selenium.By;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.regex.Pattern;

public class Locator {
    protected static final Logger LOGGER = LoggerFactory.getLogger(StepDefinitions.class);

    final public static HashMap<String, String> Identity = new HashMap<String, String>() {{
        put("header", "layoutSlotHeader");
        put("sidebar", "layoutSlotSide");
        put("sidebar menu", "blockSidebarMenu");
        put("footer", "layoutSlotFooter");
        put("content", "layoutSlotMain");
        put("subside", "layoutSlotSubside");
        put("main form", "main form block");
        put("action menu", "action menu");
    }};

    public static String selectTestId(String testId) {
        return String.format("//*[@data-testid='%s']", testId);
    }

    public static String selectTestId(By context, By by) {
        String selector = String.format("%s%s", transformByToString(context), transformByToString(by));

        LOGGER.warn("selectTestId {}", selector);
        return selector;
    }

    public static String selectTestId(By context, By by, By by2) {
        String selector = String.format("%s%s%s", transformByToString(context), transformByToString(by), transformByToString(by2));

        LOGGER.warn("selectTestId {}", selector);
        return selector;
    }


    public static By byTestId(String testId) {
        return By.xpath(selectTestId(testId));
    }

    public static By byDataValue(int value) {
        return By.xpath(String.format("//*[@data-value='%s']", value));
    }

    public static By byTestId(By context, By by1) {
        return By.xpath(selectTestId(context, by1));
    }
    public static By byTestId(By context, By by1, By by2) {
        return By.xpath(selectTestId(context, by1, by2));
    }

    public static By byRole(String role) {
        return By.xpath(String.format("//*[@role='%s']", role));
    }

    public static By bySection(String name) {
        return By.xpath(selectTestId(Identity.get(name)));
    }

    public static String sectionTestId(String name) {
        return Identity.get(name);
    }

    private static String transformByToString(By by) {
        return Pattern.compile("^By\\.\\w+:\\s*").matcher(by.toString()).replaceFirst("");
    }
}
