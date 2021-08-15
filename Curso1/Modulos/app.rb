require_relative 'calculadoras'

include Calculadora

puts PI #importa contante
t = Calculadora::Soma.new(3,4) #importa Classe
puts t.resultado 

puts multiplica(3) #importa metodo