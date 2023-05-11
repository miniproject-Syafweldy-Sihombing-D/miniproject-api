Feature: Product Categories Data in Alta Shop API

@AltaShopAPI @ProductsCategoriesAltaShop @CreateCategory
  Scenario: User create a category
    Given  Given User is call an api "/auth/login" with method "POST" with payload below
    | email       | password        |
    | userEmail   | userPassword    |
    Then User verify status code is 200
    And User get auth token
    Given User create a category
  Then User verify status code is 200

@AltaShopAPI @ProductsCategoriesAltaShop @GetCategoryByID
  Scenario: User get category By Id
    Given User call an api "/categories/14241" with method "GET"
    Then User verify response is match with json schema "categorybyid.json"

@AltaShopAPI @ProductsCategoriesAltaShop @GetAllCategories
  Scenario: User get all categories
  Given User call an api "/categories" with method "GET"
  Then User verify response is match with json schema "allcategories.json"

@AltaShopAPI @ProductsCategoriesAltaShop @DeleteCategory
  Scenario: User delete category
    Given User call an api "/categories/11297" with method "DELETE"
    Then User verify status code is 200
    Then User verify response is match with json schema "deletecategory.json"