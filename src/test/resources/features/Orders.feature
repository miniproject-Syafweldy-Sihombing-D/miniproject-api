Feature:Order in Alta Shop API

  @AltaShopAPI @OrdersAltaShop @CreateNewOrder
  Scenario: User create new order
    Given  Given User is call an api "/auth/login" with method "POST" with payload below
      | email       | password        |
      | userEmail   | userPassword    |
    Then User verify status code is 200
    And User get auth token
    Given User is create a new order
    Then User verify status code is 200

#  msh error yg ini
@AltaShopAPI @OrdersAltaShop @GetAllOrders
  Scenario: User get all orders
  Given  Given User is call an api "/auth/login" with method "POST" with payload below
    | email       | password        |
    | userEmail   | userPassword    |
  Then User verify status code is 200
  And User get auth token
  Given User get all orders
  Then User verify status code is 200

#  msh error juga
@AltaShopAPI @OrdersAltaShop @GetOrderByID
Scenario: User get order By Id
  Given  Given User is call an api "/auth/login" with method "POST" with payload below
    | email       | password        |
    | userEmail   | userPassword    |
  Then User verify status code is 200
  And User get auth token
  Given User get order by id
  Then User verify status code is 200
