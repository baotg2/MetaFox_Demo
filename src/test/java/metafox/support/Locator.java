package metafox.support;


import org.openqa.selenium.By;

import javax.annotation.Nonnull;
import java.util.HashMap;

public class Locator {

    final public static HashMap<String, String> testIdMap = new HashMap<String, String>() {{
        put("header", byTestId("layoutSlotHeader"));
        put("sidebar", byTestId("layoutSlotSide"));
        put("sidebar menu", byTestId("blockSidebarMenu"));
        put("footer", byTestId("layoutSlotFooter"));
        put("content", byTestId("layoutSlotMain"));
        put("subside", byTestId("layoutSlotSubside"));
        put("main form", byTestId("main form block"));
    }};

    public static @Nonnull String byTestId(@Nonnull String testId) {
        return String.format("[data-testid='%s']", testId);
    }

    public static @Nonnull By bySection(@Nonnull String name) {
        return By.cssSelector(testIdMap.get(name));
    }
}
