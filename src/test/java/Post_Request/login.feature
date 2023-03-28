Feature: Test login Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app/"
  Scenario: Test login Pesa
    Given path 'api/v1/auth/login'
    And def requestBody = read("json/request.json")
    And request requestBody
    When method POST
    Then status 201
    And print response