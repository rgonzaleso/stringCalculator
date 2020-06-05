class StringCalculator

    def calcular operacion
        if operacion==""  
            0
        else

            total = operacion.to_i 
            arreglo = operacion.split "+"
         
            if arreglo.length() > 1
                i = 1
                while (i<arreglo.size)
                    total = total+arreglo[i].to_i
                    i=i+1
                end
            end
  

            arreglo = operacion.split "-"
            if arreglo.length() > 1
                i = 1
                while (i<arreglo.size)
                    total = total-arreglo[i].to_i
                    i=i+1
                end
            end

            total           
        end
    end

end