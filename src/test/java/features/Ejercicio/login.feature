Feature: Autenticación y obtención de token

  Background:
    * url baseUrl
    * def credentials = { username: 'mor_2314', password: '83r5^_' }

  Scenario: Login exitoso y guardar token
    Given path 'auth/login'
    And request credentials
    When method post
    Then status 201
    And match response.token != null
    * def authToken = response.token
    * karate.set('authToken', authToken)
