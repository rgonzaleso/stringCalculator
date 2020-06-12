Feature: Ingresar la palabra secreta

Scenario: Ingresar la palabra secreta
    Given Inicio el juego
    When Ingreso "Hola" como palabra secreta
    Then Debe decirme "Palabra secreta almacenada"