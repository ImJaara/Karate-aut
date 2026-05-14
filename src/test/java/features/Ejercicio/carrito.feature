Feature: Crear múltiples carritos con data-driven

  Background:
    * url baseUrl
    * def auth = callonce read('login.feature')
    * header Authorization = 'Bearer ' + auth.authToken
    * def cartData = read('classpath:json/carts.json')

  Scenario Outline: Crear carritos con distintos usuarios y productos
    Given path 'carts'
    And request <cart>
    When method post
    Then status 201
    And match response.id != null
    And print response

    Examples:
      |cart|
      |cartData[0]|
      |cartData[1]|

