require_relative 'calculadoras'
require_relative 'mistura'

include Calculadora

puts PI #importa contante
t = Calculadora::Soma.new(3,4) #importa Classe
puts t.resultado 

puts multiplica(3) #importa metodo

puts "\nMisturando duas classes em uma: "
m = Mistura.new
print "#{m.a1} #{m.a2} #{m.b1} #{m.b2} #{m.m1}\n\n"
