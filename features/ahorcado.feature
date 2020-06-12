Feature: Adivina la palabra

Scenario: Adivina la palabra Hola
    Given Inicio el juego con palabra secreta iniciada
    When Ingreso "Hola" como palabra a adivinar
    Then Debe decirme "Salvaste tu vida"

Scenario: Adivina la palabra Chau
    Given Inicio el juego con palabra secreta iniciada
    When Ingreso "Chau" como palabra a adivinar
    Then Debe decirme "Perdiste tu vida"