package org.egov.api.steps;

import cucumber.api.java.en.Given;


public class GenericSteps extends BaseSteps {

    @Given("^Intent:(\\w+)")
    public void intentLogin(String intentId) throws Throwable {
        intent.run(intentId);
    }
}
