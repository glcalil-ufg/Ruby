module Calculadora
    PI = 3.14

    def multiplica(numero)
        print "Multiplicado: #{PI * numero}\n"
    end

    class Soma
        attr_accessor :num1, :num2

        def initialize (num1=0, num2=0)
            @num1 = num1
            @num2 = num2
        end

        def resultado
            return num1 + num2
        end
        
    end
    
end