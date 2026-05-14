Feature: flujoAvanzado

  Background:
    * def login = callonce read('login.feature')
    * def authToken = login.authToken
    * header Authorization = 'Bearer ' + authToken
    * def primerProducto = null

  @ObtenerProducto
  Scenario: Listar productos
    Given url baseUrl + '/products'
    When method get
    Then status 200
    And def primerProducto = response[0]

  @CrearCarro
  Scenario: Crear carro de compra con un producto
    Given url baseUrl + '/carts'
    And request { userId: 1, date: '2020-02-03', products: [{productId: primerProducto.id, quantity: 2 }] }
    When method post
    Then status 201
