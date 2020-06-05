class StringCalculator

    def calcular operacion
        if operacion==""  
            0
        else

            arreglo = operacion.split "+"
            suma = 0
            
            arreglo.each do |elemento|
                suma = suma + elemento.to_i
            end

            suma
            #if(operacion.include? "+")
            #    operacion.to_i + 2
            #else
            #    operacion.to_i
            #end            
        end
    end

end