Feature: Test Delete Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app"
    * def  auth = read("test_api/data/add_product.json")
    * header Authorization = 'Bearer ' + auth

  @Delete_by_id
  Scenario: Test get product Pesa API
    Given def  id = read("test_api/data/id_product.json")
    And path '/api/v1/product/641b4e0c8b679aadf33bf558'
    When method DELETE
    Then status 200
