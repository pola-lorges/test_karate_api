Feature: Test Delete Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app"
    * def  auth = read("test_api/data/add_product.json")
    * header Authorization = 'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0MWIxNTM1OGI2NzlhYWRmMzNiZjQzZSIsImlhdCI6MTY4MDEwMzE3NywiZXhwIjoxNjgwMTg5NTc3fQ.MmMHMsjX-sPrM1y4W0_e1PvFP8uGf1xiYywRX1W7jD4'

  @Delete_product_by_id
  Scenario: Test delete product Pesa API
    Given def  id = read("test_api/data/id_product.json")
    And path '/api/v1/product/641b4e0c8b679aadf33bf558'
    When method DELETE
    Then status 200

  @Patch_user_by_id
  Scenario: Test delete user Pesa API
    Given path '/api/v1/user/641b15358b679aadf33bf43e'
    When method DELETE
    Then status 200
    And print response