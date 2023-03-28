Feature: Test add product Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app"
    * def  auth = read("test_api/data/auth.json")
    * header Authorization = 'Bearer ' + auth

  @post0
  Scenario: Test add product Pesa API
    Given path '/api/v1/product'
    And def requestBody = read("test_api/data/add_product.json")
    And request requestBody
    When method POST
    Then status 201
    And print response

  @post1
  Scenario: Test login Pesa
    Given path 'api/v1/auth/login'
    And def requestBody = read("test_api/data/request.json")
    And request requestBody
    When method POST
    Then status 201
    And print response