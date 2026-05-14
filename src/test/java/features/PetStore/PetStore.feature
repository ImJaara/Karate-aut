Feature: PetStore

  @crearPet
  Scenario: Crear mascota
    Given url 'https://petstore.swagger.io/v2/pet'
    And request {  id: 1,  category": {    id: 1,    name": 'Perros'  },  name: 'Anabel',  photoUrls: [    'google.com'  ],  tags: [    {      id: 1,      name: 'Pequeña'    }  ],  status: 'available'}
    When method post
    Then status 200
    And print response
    * def petSchema =
"""
{
  id: #number,
  name: #string,
  category: ##{
    id: #number,
    name: #string
  },
  photoUrls: #[] #string,
  tags: #[] {
    id: #number,
    name: #string
  },
  status: #string
}
"""
    And match response contains
"""
{
  id: #number,
  name: #string,
  status: #string
}
"""

    @BuscarPet
    Scenario: Buscar mascota
      Given url 'https://petstore.swagger.io/v2/pet/2'
      When method get
      Then status 200
      And print response
      * def petSchema =
"""
{
  id: #number,
  name: #string,
  category: ##{
    id: #number,
    name: #string
  },
  photoUrls: #[] #string,
  tags: #[] {
    id: #number,
    name: #string
  },
  status: #string
}
"""
      And match response contains
"""
{
  id: #number,
  name: #string,
  status: #string
}
"""