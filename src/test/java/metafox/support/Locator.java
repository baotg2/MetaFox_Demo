package metafox.support;


import org.openqa.selenium.By;

import javax.annotation.Nonnull;
import java.util.HashMap;

public class Locator {

    final public static HashMap<String, String> testIdMap = new HashMap<String, String>() {{
        put("header", testIdSelector("layoutSlotHeader"));
        put("sidebar", testIdSelector("layoutSlotSide"));
        put("sidebar menu", testIdSelector("blockSidebarMenu"));
        put("footer", testIdSelector("layoutSlotFooter"));
        put("content", testIdSelector("layoutSlotMain"));
        put("subside", testIdSelector("layoutSlotSubside"));
        put("main form", testIdSelector("main form block"));
    }};

    public static @Nonnull String testIdSelector(@Nonnull String testId) {
        return String.format("[data-testid=\"%s\"]", testId);
    }


    public static By byTestId(@Nonnull String testId) {
        return By.cssSelector(testIdSelector(testId));
    }

    public static By byRole(@Nonnull String role) {
        return By.cssSelector(String.format("[role=\"%s\"]", role));
    }

    public static @Nonnull By bySection(@Nonnull String name) {
        return By.cssSelector(testIdMap.get(name));
    }
}
