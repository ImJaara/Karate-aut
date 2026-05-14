Feature: Crear carro de compra
  Background:
    * def authToken = callonce read('login.feature')
    * header Authorization = 'Bearer ' + authToken

    @CrearCarro
    Scenario: Crear carro de compra con un producto
      Given url baseUrl + '/carts'
      And request { userId: 1, date: '2020-02-03', products: [{productId:1, quantity: 2 }] }
      When method post
      Then status 201