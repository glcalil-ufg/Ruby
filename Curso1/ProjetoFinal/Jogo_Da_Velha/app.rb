require_relative 'jogo/estados.rb'

include Estados

while 1
    Estados.inicio
    flag = gets.to_i
    case flag
        when 0
            break
        when 1
            Estados.comecar_partida
            i = 1
            while 1 < 10
                Estados.jogar
                i += 1
            end
    end
end