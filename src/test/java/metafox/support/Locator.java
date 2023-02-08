package metafox.support;

import metafox.stepdefs.StepDefinitions;
import org.openqa.selenium.By;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.annotation.Nonnull;
import java.util.Arrays;
import java.util.HashMap;
import java.util.regex.Pattern;
import java.util.stream.Collectors;

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
        put("profile menu", "profile menu");
        put("slot top", "layoutSlotTop");
        put("main top", "layoutSlotMainTop");
        put("status composer", "dialogStatusComposer");
        put("friend picker", "popupFriendPicker");
        put("group picker", "popupGroupPicker");
        put("form", "fieldSubmit");
        put("basic", "fieldBasic");
        put("report", "popupReport");
        put("search", "blockSearch");
        put("detail photo", "popupDetailPhoto");
        put("detail poll", "detailview poll");
        put("edit popup", "editPopup");
        put("detail videos", "popupDetailVideo");
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

    public static String selectTestId(By... list) {
        return Arrays.stream(list).map(Locator::transform).collect(Collectors.joining());
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

    public static By by(By... list) {
        return By.xpath(selectTestId(list));
    }

    public static By byRole(String role) {
        return By.xpath(String.format("//*[@role='%s']", role));
    }

    public static By byType(String type) {
        return By.xpath(String.format("//*[@type='%s']", type));
    }

    public static By byName(String name) {
        return By.xpath(String.format("//*[@name='%s']", name));
    }
    public static By byAriaLabel(String ariaLabelValue) {
        return By.xpath(String.format("//*[@aria-label='%s']", ariaLabelValue));
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

    public static By byTitle(String tagName, String value) {
        return By.xpath(String.format("//%s[@title='%s']", tagName, value.trim()));
    }

    public static By byText(String tagName, String text) {
        return By.xpath(String.format("//%s[contains(text(), '%s')]", tagName, text.trim()));
    }
    public static By byClass(String tagName, String text) {
        return By.xpath(String.format("//%s[contains(@class, '%s')]", tagName, text.trim()));
    }

    public static By byId(String text) {
        return byText("*", text);
    }

    public static By byId(String tagName, String id) {
        return By.xpath(String.format("//%s[contains(@id, '%s')]", tagName, id.trim()));
    }

    public static By byHref(@Nonnull String url) {
        return By.xpath(String.format("//a[contains(@href, '%s')]", url.trim()));
    }

    public static By byAriaControls(@Nonnull String ariaControlsValue){
        return By.xpath(String.format("//*[@aria-controls='%s']", ariaControlsValue));
    }

    public static By byPlaceHolder(@Nonnull String placeholderValue){
        return By.xpath(String.format("//input[contains(@placeholder, '%s')]",placeholderValue));
    }
}
