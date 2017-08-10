Feature: Login Intent

  Scenario: Login
    Given path "/user/oauth/token"
    Given def headerContent = read('header.yaml')
    And headers headerContent
    And def body = read('body.yaml')
    And form fields body
    When method post
    Then status 200
    Then match response.UserRequest.userName == '#(responseData.username)'
