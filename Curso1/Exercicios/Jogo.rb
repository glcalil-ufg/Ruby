class Adivinhe
    attr_reader :numero
    attr_reader :venceu

    def initialize
        @numero = Random.rand(1..253)
        @venceu = false
    end

    def teste(numero = 0)
        if numero == 0
            return -1
        elsif numero == @numero
            @venceu = true
            puts "You Win!!"  #venceu o jogo
            return 1
        elsif  numero > @numero
            puts "Menooos" #tentar um numero menor
            return 0
        else
            puts"Maaais" #tentar um numero maior
            return 0
        end
    end
end

jogo = Adivinhe.new
cont = 5

while cont > 0
    print "Digite um numero: "
    numero = gets.chomp.to_i
    flag = jogo.teste(numero)
    cont -= 1
    if flag !=0 || cont == 0
        if !jogo.venceu
            puts "Game Over!" #fim do jogo
        end
        break
    end
    print "Tentativas restantes #{cont}\n\n\n"
end
