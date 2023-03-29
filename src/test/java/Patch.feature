Feature: Test Patch Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app"
    * def  auth = read("test_api/data/add_product.json")
    * header Authorization = 'Bearer ' + auth

  @Patch_by_prodcut_id
  Scenario: Test patch product Pesa API
    Given path '/api/v1/product/641b4e0c8b679aadf33bf558'
    When method PATCH
    And def requestBody = read("test_api/data/add_product.json")
    Then status 200
    And print response

  @Patch_by_user_id
  Scenario: Test get product Pesa API
    Given path '/api/v1/user/641b15358b679aadf33bf43e'
    When method PATCH
    And def requestBody = read("test_api/data/user.json")
    Then status 200
    And print response