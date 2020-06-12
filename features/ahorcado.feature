Feature: Adivina la palabra

Scenario: Adivina la palabra Hola
    Given Inicio el juego
    When Ingreso "Hola" como palabra secreta
    And Ingreso "Hola" como palabra a adivinar
    Then Debe decirme "Salvaste tu vida"

Scenario: Arriesgo 6 veces y pierdo
    Given Inicio el juego
    When Ingreso "Hola" como palabra secreta
    And Ingreso "Chau" como palabra a adivinar
    And Ingreso "Chau2" como palabra a adivinar
    And Ingreso "Chau3" como palabra a adivinar
    And Ingreso "Chau3" como palabra a adivinar
    And Ingreso "Chau3" como palabra a adivinar
    And Ingreso "Chau3" como palabra a adivinar
    Then Debe decirme "Perdiste una vida, te quedan 0"

Scenario: Mostrar cantidad de vidas
<<<<<<< HEAD
    Given Inicio el juego
    When Ingreso "Hola" como palabra secreta
    And Ingreso "Chau" como palabra a adivinar
    Then Debe decirme "Perdiste una vida, te quedan 5"
=======
    Given Inicio el juego con palabra secreta iniciada
    When Ingreso "Chau" como palabra a adivinar
    Then Debe decirme "Perdiste una vida, te quedan 5"

Scenario: Mostrar tip sobre la palabra a elegir
    Given Inicio el juego con palabra secreta iniciada
    Then Debe decirme "La palabra a adivinar tiene 4 letras"
>>>>>>> 4d188356f2523135b24e11bf7a68f9c75183b639
