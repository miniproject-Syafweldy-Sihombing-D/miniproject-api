Feature: Product Data in Alta Shop API

@AltaShopAPI @ProductsAltaShop @GetAllProducts
  Scenario: User get all products
  Given User call an api "/products" with method "GET"
  Then User verify response is match with json schema "allproducts.json"

@AltaShopAPI @ProductsAltaShop @CreateNewProduct
  Scenario: User create a new product
    Given Given User is call an api "/auth/login" with method "POST" with payload below
      | email     | password      |
      | userEmail | userPassword  |
  Then User verify status code is 200
  And User get auth token
  Given User is create a new product
  Then User verify status code is 200

@AltaShopAPI @ProductsAltaShop @GetProductByID
  Scenario: User get product By Id
  Given User call an api "/products/52485" with method "GET"
  Then User verify response is match with json schema "productbyid.json"

@AltaShopAPI @ProductsAltaShop @GetProductRatings
  Scenario: User get product rating
  Given User call an api "/products/11042/ratings" with method "GET"
  Then User verify response is match with json schema "productrating.json"

@AltaShopAPI @ProductsAltaShop @GetProductComments
  Scenario: User get product comment
  Given User call an api "/products/2/comments" with method "GET"
  Then User verify response is match with json schema "productcomment.json"

@AltaShopAPI @ProductsFakeStore @DeleteProduct
  Scenario: User delete product
    Given User call an api "/products/11287" with method "DELETE"
    Then User verify status code is 200
    Then User verify response is match with json schema "deleteproduct.json"

@AltaShopAPI @ProductsFakeStore @AssignProductRating
  Scenario: User assign a product rating
    Given User is call an api "/auth/login" with method "POST" with payload below
      | email       | password        |
      | userEmail   | userPassword    |
  Then User verify status code is 200
  And User get auth token
  Given User is assign a product rating
  Then User verify status code is 200

@AltaShopAPI @ProductsFakeStore @CreateCommentProduct
  Scenario: User create a comment for product
    Given  Given User is call an api "/auth/login" with method "POST" with payload below
      | email       | password        |
      | userEmail   | userPassword    |
  Then User verify status code is 200
  And User get auth token
  Given User is create a comment for product
  Then User verify status code is 200
