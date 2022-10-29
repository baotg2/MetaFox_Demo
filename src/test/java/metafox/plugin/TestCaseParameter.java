package metafox.plugin;

import io.cucumber.plugin.ConcurrentEventListener;
import io.cucumber.plugin.event.EventHandler;
import io.cucumber.plugin.event.EventPublisher;
import io.cucumber.plugin.event.TestCaseFinished;
import io.cucumber.plugin.event.TestCaseStarted;
import io.qameta.allure.Allure;
import io.qameta.allure.AllureLifecycle;
import io.qameta.allure.model.Label;
import io.qameta.allure.model.Link;
import io.qameta.allure.model.Parameter;
import io.qameta.allure.util.ResultsUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

public class TestCaseParameter implements ConcurrentEventListener {

    private static final Logger LOGGER = LoggerFactory.getLogger(TestCaseParameter.class);

    private final AllureLifecycle lifecycle;

    private final EventHandler<TestCaseStarted> testCaseStarted;
    private final EventHandler<TestCaseFinished> testCaseFinished;

    public TestCaseParameter() {
        this.lifecycle = Allure.getLifecycle();
        this.testCaseStarted = this::handleTestCaseStarted;
        this.testCaseFinished = this::handleTestCaseFinished;
    }

    private void handleTestCaseFinished(TestCaseFinished event) {
        lifecycle.getCurrentTestCase().ifPresent(s -> {
            LOGGER.info("handleTestCaseFinished " + s);
        });
    }

    public Parameter getHost() {
        return ResultsUtils.createParameter("host", "localhost");
    }

    public Label createLabel(String name, String value) {
        return ResultsUtils.createLabel(name, value);
    }

    public Parameter createParameter(String name, String value) {
        return ResultsUtils.createParameter(name, value);
    }

    public static String getHostName(String url) {
        try {
            URI uri = new URI(url);
            return uri.getHost();
        } catch (URISyntaxException exception) {
            // do nothing
        }
        return url;
    }

    public Link createLink(String name, String url) {
        Link link = new Link();

        return link.setName(name).setUrl(url);

    }

    public Link hostLink() {
        String url = System.getenv("BASE_URL");
        return createLink(url, url);
    }

    public void handleTestCaseStarted(TestCaseStarted event) {
        lifecycle.updateTestCase(result -> {
            List<Parameter> parameters = result.getParameters();
            String baseUrl = getHostName(System.getenv("BASE_URL"));

            // fix unsupported operator exception
            if (parameters.size() == 0) {
                parameters = new ArrayList<>();
                result.setParameters(parameters);
            }

            parameters.add(createParameter(".url", baseUrl));
            parameters.add(createParameter(".browser", "Chrome"));
            parameters.add(createParameter(".platform", "OS_X"));

            result.getLinks().add(hostLink());

            result.getParameters().forEach(label -> {
                LOGGER.info("labels {} {}", label.getName(), label.getValue());
            });
        });

//        lifecycle.getCurrentTestCase().ifPresent(s -> addParameters( "host", "localhost"));
    }

    public void setEventPublisher(EventPublisher eventPublisher) {
        eventPublisher.registerHandlerFor(TestCaseStarted.class, this.testCaseStarted);
        eventPublisher.registerHandlerFor(TestCaseFinished.class, this.testCaseFinished);
    }
}
