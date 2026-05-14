Feature: CRUD Carrito en Fake Store API

  Background:
    * url baseUrl
    * def auth = callonce read('login.feature')
    * header Authorization = 'Bearer ' + auth.authToken

    Given path 'carts'
    And request
      """
      {"userId": 1, "products": [{"id": 1, "title": "test", "price":1, "description": "test", "category": "test", "image": "test.test"},{"id": 2, "title": "test", "price":2, "description": "test", "category": "test", "image": "test.test"}]}
      """
    When method post
    And status 201
    And print response
    And def cartId = response.id
    And match response.id != null
    Then assert response.products.length > 0
    And match each response.products[*].price == '#? _ > 0'

  Scenario: Consultar carrito creado
    Given path 'carts'
    When method get
    Then status 200
    And print response

  Scenario: Actualizar carrito
    Given path 'carts', cartId
    And request
      """
      {"userId": 10, "products": [{"id": 10, "title": "test", "price":10, "description": "test", "category": "test", "image": "test.test"},{"id": 20, "title": "test", "price":20, "description": "test", "category": "test", "image": "test.test"}]}
      """
    When method put
    And status 200
    And match response.id != null
    Then assert response.products.length > 0
    And match each response.products[*].price == '#? _ > 0'

  Scenario: Eliminar carrito
    Given path 'carts', cartId
    When method delete
    Then status 200
