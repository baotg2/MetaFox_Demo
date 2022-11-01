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

    final private static Pattern pattern = Pattern.compile("^By\\.\\w+:\\s*");

    private static String xpath(String tagName, String testId) {
        return String.format("//%s[@data-testid='%s']", tagName, testId);
    }

    public static String selectTestId(By context, By by) {
        String selector = String.format("%s%s", transform(context), transform(by));

        LOGGER.warn("selectTestId {}", selector);
        return selector;
    }

    public static String selectTestId(By context, By by, By by2) {
        String selector = String.format("%s%s%s", transform(context), transform(by), transform(by2));

        LOGGER.warn("selectTestId {}", selector);
        return selector;
    }


    public static String selectTestId(By context, By by, By by2, By by3) {
        String selector = String.format("%s%s%s%s", transform(context), transform(by), transform(by2), transform(by3));

        LOGGER.warn("selectTestId {}", selector);
        return selector;
    }


    public static By byTestId(String testId) {
        return By.xpath(xpath("*", testId));
    }

    public static By byTestId(String tagName, String testId) {
        return By.xpath(xpath(tagName, testId));
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

    public static By byTestId(By context, By by1, By by2, By by3) {
        return By.xpath(selectTestId(context, by1, by2, by3));
    }

    public static By byRole(String role) {
        return By.xpath(String.format("//*[@role='%s']", role));
    }

    public static By bySection(String name) {
        return By.xpath(xpath("div", Identity.get(name)));
    }

    public static By byTagName(String tag) {
        return By.xpath(String.format("//%s", tag));
    }


    private static String transform(By by) {
        return pattern.matcher(by.toString()).replaceFirst("");
    }

    public static By byText(String text) {
        return byText("*", text);
    }

    public static By byText(String tagName, String text) {
        return By.xpath(String.format("//%s[contains(text(), '%s')]", tagName, text.trim()));
    }
}
