require './lib/string_calculator.rb'

describe StringCalculator do
    it "cuando operacion es vacio retorna 0" do
        #Arrange
        calculator = StringCalculator.new
        #act
        result = calculator.calcular("")
        #assert
        expect(result).to eq 0
    end
    it "cuando operacion es '2' retorna 2" do
        #Arrange
        calculator = StringCalculator.new
        
        #act
        result = calculator.calcular("2")
        
        #assert
        expect(result).to eq 2
    end
    it "cuando operacion es '1+2' retorna 3" do
        #Arrange
        calculator = StringCalculator.new
        
        #act
        result = calculator.calcular("1+2")
        
        #assert
        expect(result).to eq 3
    end
    it "cuando operacion es '3+4' retorna 7" do
        #Arrange
        calculator = StringCalculator.new
        
        #act
        result = calculator.calcular("3+4")
        
        #assert
        expect(result).to eq 7
    end
    it "cuando operacion es '1+2+3' retorna 6" do
        #Arrange
        calculator = StringCalculator.new
        
        #act
        result = calculator.calcular("1+2+3")
        
        #assert
        expect(result).to eq 6
    end
end