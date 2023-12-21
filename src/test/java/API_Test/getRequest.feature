Feature:Swagger Petstore API Testing

  Background:
    Given url "https://petstore.swagger.io/v2"
    And print "===== Get user list====="

  Scenario:Get user by username
    When path "/user/rizky"
    And method get
    Then status 200
    And print response