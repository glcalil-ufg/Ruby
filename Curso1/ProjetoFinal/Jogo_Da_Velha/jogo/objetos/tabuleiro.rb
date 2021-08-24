class Tabuleiro
    attr_accessor :tab, :cheia, :cont

    def inicializa_tabuleiro()
        @tab = Array.new(3){Array.new(3)}
        i = 0
        j = 0
        print "Carregando."
        for i in 0...3
            for j in 0...3
                @tab[i][j] = " "
                sleep 0.2
                print "."
            end
        end
        print "\n"
    end

    def atualiza_campo(jogada, simbolo)
        i = jogada[0].to_i - 1
        j = jogada[2].to_i - 1
        if (0 <= i && i < 3) && (0 <= j && j < 3) 
            if tab[i][j] == " "
                tab[i][j] = simbolo
                cont +=1
                return 1
            else
                return 0
            end
        else
            return 0
        end
    end

    def mostra_tabuleiro ()
        system("cls")
        print "\n"
        print "    1   2   3\n"
        print "1   #{tab[0][0]} | #{tab[0][1]} | #{tab[0][2]}\n"
        print "  ────┼───┼────\n"
        print "2   #{tab[1][0]} | #{tab[1][1]} | #{tab[1][2]}\n"
        print "  ────┼───┼────\n"
        print "3   #{tab[2][0]} | #{tab[2][1]} | #{tab[2][2]}\n" 
        print "\n"
    end
end

