package metafox.webdriver;

import metafox.util.Utility;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.openqa.selenium.MutableCapabilities;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxProfile;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.FileReader;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class WebDriverFactory {

    private static volatile WebDriverFactory instance;
    private final JSONObject testConfig = this.parseWebDriverConfig();

    private static final Logger LOGGER = LoggerFactory.getLogger(WebDriverFactory.class);

    private WebDriverFactory() {
    }

    public static WebDriverFactory getInstance() {
        if (instance == null) {
            synchronized (WebDriverFactory.class) {
                if (instance == null) {
                    instance = new WebDriverFactory();
                }
            }
        }

        return instance;
    }

    private JSONObject parseWebDriverConfig() {
        JSONParser parser = new JSONParser();
        String capabilitiesConfigFile = System.getProperty("caps", "src/test/resources/conf/single.conf.json");
        try {
            return (JSONObject) parser.parse(new FileReader(capabilitiesConfigFile));
        } catch (IOException | ParseException var6) {
            throw new Error("Unable to parse capabilities file " + capabilitiesConfigFile, var6);
        }
    }

    public List<JSONObject> getPlatforms() {
        JSONArray environments = (JSONArray) testConfig.get("environments");
        List<JSONObject> platforms = new ArrayList<>();
        for (Object obj : environments) {
            JSONObject singleConfig = Utility.getCombinedCapability((Map<String, String>) obj, testConfig);
            platforms.add(singleConfig);
        }
        return platforms;
    }

    public WebDriver createWebDriverForPlatform(JSONObject platform, String testName) {
        try {

            LOGGER.error("createWebDriverForPlatform {}",platform.get("localChrome") );


            if (platform.get("localFirefox") != null) {
                return createLocalFireFox();
            }

            if (platform.get("localChrome") != null) {
                return createLocalChromeDriver();
            }

            String URL = String.format("https://%s/wd/hub", testConfig.get("server"));

            MutableCapabilities caps = new MutableCapabilities(platform);

            return new RemoteWebDriver(new URL(URL), caps);
        } catch (MalformedURLException var4) {
            throw new Error("Unable to create WebDriver", var4);
        }
    }


    public WebDriver createLocalChromeDriver() {
        ChromeOptions options = new ChromeOptions();
        options.addArguments("use-fake-device-for-media-stream");
        options.addArguments("use-fake-ui-for-media-stream");
        Map<String, Object> prefs = new HashMap<String, Object>();
        prefs.put("profile.default_content_setting_values.media_stream_mic", 1);
        prefs.put("profile.default_content_setting_values.media_stream_camera", 1);
        prefs.put("profile.default_content_setting_values.geolocation", 1);
        prefs.put("profile.default_content_setting_values.notifications", 1);
        options.setExperimentalOption("prefs", prefs);

        return new ChromeDriver(options);
    }

    public WebDriver createLocalFireFox() {
        FirefoxProfile ffprofile = new FirefoxProfile();
        ffprofile.setPreference("dom.webnotifications.enabled", true);
        return new FirefoxDriver();
    }
}
