Feature: login feature

  Background: someBackground
    * url "http://egov-micro-qa.egovernments.org"
    Then def responseData = read('datastore/response.yaml')


  Scenario: Login
    Given path "/user/oauth/token"
    Given def headerContent = read('datastore/header.yaml')
    And headers headerContent
    And def body = read('datastore/body.yaml')
    And form fields body
    When method post
    Then status 200
    Then match response.UserRequest.userName == '#(responseData.username)'
    Then print responseData.accessToken
    Then set responseData.accessToken = response.access_token
    Then print responseData.accessToken
