require './lib/ahorcado'

describe Ahorcado do
#PRUEBA 1 HOLA
    it "Adivina la palabra Hola" do
        #arrange
        ahorcado = Ahorcado.new "Hola"
        #act
        result = ahorcado.validar "Hola"
        #result = ahorcado.status
        #assert
        expect(result).to eq "Salvaste tu vida"
    end



#PRUEBA 2 CHAU
    it "Arriesgo 3 veces y pierdo" do
        #arrange
        ahorcado = Ahorcado.new "Hola"
       
        #act
        ahorcado.validar "Chau"
        ahorcado.validar "Chau2"
        ahorcado.validar "Chau3"
        ahorcado.validar "Chau4"
        ahorcado.validar "Chau5"
        result = ahorcado.validar "Chau6"

        #assert
        expect(result).to eq "Perdiste una vida, te quedan 0"
    end

#PRUEBA 3 CHAU
    it "Arriesgo una vez" do
        #arrange
        ahorcado = Ahorcado.new "Hola"
       
        #act
        result = ahorcado.validar "Chau"

        #assert
        expect(result).to eq "Perdiste una vida, te quedan 5"
    end

end