package MetaFox;

import io.cucumber.plugin.EventListener;
import io.cucumber.plugin.event.EventHandler;
import io.cucumber.plugin.event.EventPublisher;
import io.cucumber.plugin.event.TestCaseFinished;
import io.cucumber.plugin.event.TestCaseStarted;
import io.qameta.allure.Allure;
import io.qameta.allure.AllureLifecycle;
import io.qameta.allure.model.Parameter;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class TestCaseParameter implements EventListener {

    private static final Logger LOGGER = LoggerFactory.getLogger(TestCaseParameter.class);

    private final AllureLifecycle lifecycle;

    private final EventHandler<TestCaseStarted> testCaseStarted;
    private final EventHandler<TestCaseFinished> testCaseFinished;

    public TestCaseParameter() {
        this.lifecycle  = Allure.getLifecycle();
        this.testCaseStarted = this::handleTestCaseStarted;
        this.testCaseFinished = this::handleTestCaseFinished;
    }

    private void handleTestCaseFinished(TestCaseFinished event) {
        LOGGER.info("handle: TestCaseFinished");
        Parameter host = new Parameter().setName("host").setValue("localhost");


        final String uuid = event.getTestCase().getId().toString();

        lifecycle.updateTestContainer(uuid, testResult -> {
            LOGGER.info("TestCaseFinished");
        });
    }

    private void handleTestCaseStarted(TestCaseStarted event) {

    }

    public void setEventPublisher(EventPublisher eventPublisher) {
        eventPublisher.registerHandlerFor(TestCaseStarted.class, this.testCaseStarted);
        eventPublisher.registerHandlerFor(TestCaseFinished.class, this.testCaseFinished);
    }
}
