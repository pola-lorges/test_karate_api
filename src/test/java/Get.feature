Feature: Test get  Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app"
    * def  auth = read("test_api/data/add_product.json")
    * header Authorization = 'Bearer ' + auth

  @Get_all_product
  Scenario: Test get all products Pesa API
    Given path '/api/v1/product'
    When method GET
    Then status 200
    And print response

  @Get_by_product_id
  Scenario: Test get product Pesa API
    Given path "/api/v1/product/641b4e0c8b679aadf33bf558"
    When method GET
    Then status 200
    And print response
