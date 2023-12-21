
  Feature: Swagger Petstore API Testing

  Background:
    Given url "https://petstore.swagger.io/v2"
    * def header = { 'Content-Type': 'application/json', 'Accept': 'application/json' }
    * def body   = { "id": 155, "username": "rizky", "firstName": "Rizky", "lastName": "Yalvinsya", "email": "rizky16548@gmail.com", "password": "adaaja", "phone": "081256137261", "userStatus": 1 }

    Scenario: Create a new user
    When path "/user"
    And request body
    And method post
    And headers header
    Then status 200
    And print response
    And match response == {"code": '#number',"type": '#string',"message": '#string'}
