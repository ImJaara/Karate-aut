Feature: Obtener lista de productos

  @ObtenerProductos
  Scenario: Listar productos
    Given url baseUrl + '/products'
    When method get
    Then status 200
    And print response
    And match response == '#[]'
    And match each response[*].tittle == '#string'
    And match response[*].title contains '#regex .*Shirt.*'