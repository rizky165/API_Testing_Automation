Feature:Swagger Petstore API Testing

  Background:
    Given url "https://petstore.swagger.io/v2"
    And print "======= Delete User ======="

    Scenario:Delete user by username
    When path '/user/rizky'
    And method delete
    Then status 200
    And print response