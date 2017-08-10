package org.egov.api.steps;

import com.testvagrant.intents.Intent;
import cucumber.api.java.Before;

/**
 * Created by krishnanand on 10/08/17.
 */
public class StartingSteps extends BaseSteps {

    @Before
    public void setup() {
        intent = new Intent();
    }
}
