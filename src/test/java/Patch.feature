Feature: Test Patch Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app"
    * def  auth = read("test_api/data/add_product.json")
    * header Authorization = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0MWIxNTM1OGI2NzlhYWRmMzNiZjQzZSIsImlhdCI6MTY4MDEwMzE3NywiZXhwIjoxNjgwMTg5NTc3fQ.MmMHMsjX-sPrM1y4W0_e1PvFP8uGf1xiYywRX1W7jD4'

  @Patch_product_by_id
  Scenario: Test patch product Pesa API
    Given path '/api/v1/product/64255f13657461aff0791448'
    When method PATCH
    And def requestBody = read("test_api/data/update_product.json")
    Then status 200
    And print response

  @Patch_by_user_id
  Scenario: Test get product Pesa API
    Given path '/api/v1/user/641b15358b679aadf33bf43e'
    When method PATCH
    And def requestBody = read("test_api/data/user.json")
    And request requestBody
    Then status 200
    And print response