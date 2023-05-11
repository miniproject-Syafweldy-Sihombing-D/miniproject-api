Feature: Index in Alta Shop API

@AltaShopAPI @IndexAltaShop
  Scenario: User get Index
    Given User call an api "/hello" with method "GET"
    Then User verify response is match with json schema "index.json"