Feature: Sample API Test

Scenario: Añadir una mascota a la tienda
	Given url 'https://petstore.swagger.io/v2/pet'
  And def payload =
    """
  {
   "id": 1,
  "category": {
    "id": 0,
    "name": "Example"
  },
  "name": "Doge",
  "photoUrls": [
    "photo/link"
  ],
  "tags": [
    {
      "id": 0,
      "name": "dogy"
    }
  ],
  "status": "available"
}
    """
    And request payload
    When method POST
    Then status 200
   
    
    
Scenario: Consultar la mascota ingresada previamente (Búsqueda por ID)
	Given url 'https://petstore.swagger.io/v2/pet/1'
    When method GET
    Then status 200 
    And match response.name == '#present'
    And match response.name == 'Doge'
    And match response.id == 1
    
Scenario: Actualizar el nombre de la mascota y el estatus de la mascota a “sold”
	Given url 'https://petstore.swagger.io/v2/pet'
	  And def payload =
    """
  {
   "id": 1,
  "category": {
    "id": 0,
    "name": "Example"
  },
  "name": "Doge Two",
  "photoUrls": [
    "photo/link"
  ],
  "tags": [
    {
      "id": 0,
      "name": "dogy"
    }
  ],
  "status": "sold"
}
    """
    And request payload
    When method PUT
    Then status 200 
    
Scenario: Consultar la mascota modificada por estatus (Búsqueda por estatus)
	Given url 'https://petstore.swagger.io/v2/pet/findByStatus?status=sold'
    When method GET
    Then status 200 
    #And match response[5].name == '#present'
    And match response[5].name == 'Doge Two'
    And match response[5].status == 'sold'
   
