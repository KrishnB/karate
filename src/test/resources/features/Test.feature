Feature: Test

  Scenario: test it

    Given def result = call read('commons/Login.feature')
    Then print result.responseData.accessToken
