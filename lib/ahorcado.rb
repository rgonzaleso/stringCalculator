class Ahorcado

    def initialize 
        @intentos = 6
    end
    

    def validar palabra

        if palabra == 'Hola'
            'Salvaste tu vida'
        else
            @intentos -= 1            
            'Perdiste una vida, te quedan ' + @intentos.to_s
        end
    end

end