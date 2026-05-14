Feature: CRUD

  Background:
    * url 'https://reqres.in/api/'
    * configure headers = {x-api-key: 'reqres-free-v1'}

    Given path 'users'
    And def json = read('../../json/empleados.json')
    #And request { name: 'Diego', job: 'lider' }
    And request json
    When method post
    Then status 201
    And def userId = response.id
    And karate.set('userId', userId)

  @ModificarUsuario
  Scenario: Modificar usuario
    Given path 'users', userId
    And request { name: 'Diego', job: 'DEV'}
    When method put
    Then status 200
    And print response
    And match response.job == 'DEV'

  @EliminarUsuario
  Scenario: Eliminar usuario
    Given path 'users' + userId
    #And request { name: 'Diego', job: 'DEV'}
    When method delete
    Then status 204
    And print response
