class StringCalculator

    def calcular operacion
        if operacion==""  
            0
        else
            if(operacion.include? "+")
                operacion.to_i + 2
            else
                operacion.to_i
            end            
        end
    end

end