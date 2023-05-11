Feature: Authentication

@AltaShopAPI @AuthenticationAltaShop @Register
  Scenario: User register with given identity
    Given User is call an api "/auth/register" with method "POST" with payload below
      | email       | password        | fullname |
      | randomEmail | randomPassword  | randomFullname |
    Then User verify status code is 200
    Given User is call an api "/auth/login" with method "POST" with payload below
      | email     | password      |
      | userEmail | userPassword  |
    Then User verify status code is 200
    And User get auth token
   Given User get other information
  Then User verify status code is 200

