puts "Escreva duas palavras separadas por enter"
v1 = gets.chomp
v2 = gets
#strings:
puts "Eu disse: #{v1} \nEla disse: #{v2.inspect}" # #{} intercalar string + codigo

#coerção:
puts"digite um numero: "
v1 = gets.chomp.to_i #_s string, _i inteiro, _f real, to_sym simbolo
v2 = v1 + 2
puts v2

#operadores_aritimeticos:

puts "Adição: #{v1 + v2}"
puts "Subtração: #{v1 - v2}"
puts "Multiplicação: #{v1 * v2}"
puts "Divisão: #{v1 / v2}"
puts "Resto da divisão: #{v1 % v2}"
puts "potecia: #{v1 ** v2}"

#operadores_logico: && and, or ||, ! not
puts "spaceship: #{v1 <=> v2}"
=begin
2 <=> 1 retorna 1
2 <=> 2 retorna 0
1 <=> 2 retorna -1    
=end

#condicionais:
#if elseif else
puts "Digite um numero:"
v2 = gets.chomp.to_i

if v1 > v2 #se teste verdadeiro
    puts "#{v1} é maior que #{v2}"
elsif v1 == v2
    puts "#{v1} é igual a #{v2}"
else
    puts "#{v1} é menor que #{v2}"
end

#unless
unless v1 > 3 #se teste falso
    puts "#{v1} não é maior que 3"
end

#case
case v1%2
    when 0
        puts "#{v1} é par"
    when 1
        puts "#{v1} é impar"
    else 
        puts "não é par nem impar"
end

#repetição
#while enquanto true 
#until até true

i = 0
v = [] #declaração de vetor
h = {} #hash
while i < 10
    v[i] = i + 3
    puts"#{v[i]}"
    i+=1
end
i = 3
h = {"3" => "3" ,"2" => "2", "1" => "1" }
until i <= 0 
    puts h["#{i}"]
    i-=1
end

h.each {
    |chave, valor|
    puts "#{chave} #{valor}"
}

(2..4).each {|x| #multiplicar por 4
    2.times{
       x+= x 
    }  
    puts x
}
