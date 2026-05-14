Feature: Crear usuario en
  @CrearUsuario
  Scenario: crear usuario exitosamente
    Given url 'https://reqres.in/api/users'
    And header x-api-key = 'reqres-free-v1'
    And def json = read('classpath:json/empleados.json')
    #And request { name: 'Diego', job: 'lider' }
    And request json
    When method post
    Then status 201
    And print response

  @CrearUsuarioDataset
  Scenario Outline: crear usuario exitosamente con dataset
    Given url 'https://reqres.in/api/users'
    And header x-api-key = 'reqres-free-v1'
    And def json = read('classpath:json/empleadosConDatos.json')
    #And request { name: 'Diego', job: 'lider' }
    And request json
    When method post
    Then status 201
    And print response

    Examples:
    |read('../../../../../src/test/resources/dataset/dataEmpleados.csv')|