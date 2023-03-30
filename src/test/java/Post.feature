Feature: Test add product Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app"
    * def  auth = read("test_api/data/auth.json")
    * header Content-type = 'application/json'
    * header Authorization = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0MWIxNTM1OGI2NzlhYWRmMzNiZjQzZSIsImlhdCI6MTY4MDEwMzE3NywiZXhwIjoxNjgwMTg5NTc3fQ.MmMHMsjX-sPrM1y4W0_e1PvFP8uGf1xiYywRX1W7jD4'

  @post_
  Scenario: Test add product Pesa API
    Given path '/api/v1/product'
    And def requestBody = read("test_api/data/add_product.json")
    And request requestBody
    When method POST
    Then status 201
    And print response

  @login
  Scenario: Test login Pesa
    Given path 'api/v1/auth/login'
    And def requestBody = read("test_api/data/request.json")
    And request requestBody
    When method POST
    Then status 201
    And print response