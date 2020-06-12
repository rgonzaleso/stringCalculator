Feature: Adivina la palabra

Scenario: Adivina la palabra Hola
    Given Inicio el juego con palabra secreta iniciada
    When Ingreso "Hola" como palabra a adivinar
    Then Debe decirme "Salvaste tu vida"

Scenario: Arriesgo 6 veces y pierdo
    Given Inicio el juego con palabra secreta iniciada
    When Ingreso "Chau" como palabra a adivinar
    And Ingreso "Chau2" como palabra a adivinar
    And Ingreso "Chau3" como palabra a adivinar
    And Ingreso "Chau3" como palabra a adivinar
    And Ingreso "Chau3" como palabra a adivinar
    And Ingreso "Chau3" como palabra a adivinar
    Then Debe decirme "Perdiste una vida, te quedan 0"

Scenario: Mostrar cantidad de vidas
    Given Inicio el juego con palabra secreta iniciada
    When Ingreso "Chau" como palabra a adivinar
    Then Debe decirme "Perdiste una vida, te quedan 5"