Feature: Test add product Pesa

  Background:
    * url "https://pesa-backend-production-2.up.railway.app"
    * header Authorization = 'Bearer ' + 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY0MWIxNTM1OGI2NzlhYWRmMzNiZjQzZSIsImlhdCI6MTY3OTkyODgxNCwiZXhwIjoxNjgwMDE1MjE0fQ.fr7VwAzwkvChP3WKGZ5jq8e8pCyjUG3-hCK_HZPVAVg'
  Scenario: Test add product Pesa API
    Given path '/api/v1/product'
    And def requestBody = read("json/add_product.json")
    And request requestBody
    When method POST
    Then status 201