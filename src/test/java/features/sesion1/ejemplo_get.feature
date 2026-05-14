Feature: Ejemplo Get con JsonPlaceholder

  @ejemplo
  Scenario: obtener un post con el ID
    Given url 'https://jsonplaceholder.typicode.com/posts/1'
    When method get
    Then status 200
    And print response
    And match response.id == 1