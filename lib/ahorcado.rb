class Ahorcado

    def initialize palabraSecreta
        @intentos = 6
        @palabraSecreta = palabraSecreta
    end
    

    def validar palabra

        if palabra == @palabraSecreta
            'Salvaste tu vida'
        else
            @intentos -= 1            
            'Perdiste una vida, te quedan ' + @intentos.to_s
        end
    end

    def tip
        "La palabra a adivinar tiene "+ @palabraSecreta.length.to_s + " letras"
    end

end