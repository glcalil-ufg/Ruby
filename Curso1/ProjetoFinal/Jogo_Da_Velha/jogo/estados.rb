module Estados
    require_relative 'objetos/tabuleiro'
    require_relative 'objetos/player'

    @jogador
    @jogada
    @anterior
    @p1 = nil
    @p2 = nil
    @tab = nil

    def inicio 
        system("cls")
        print " ----- Jogo da Velha -----\n"
        print "   1    Iniciar Jogo \n"
        print "   0       Sair     \n"
        print "\n Escolha um opção: "
    end

    def comecar_partida
        system("cls")
        print "Nome do jogador 1: "
        nome = gets.chomp
        @p1 = Player.new('X',nome)

        print "Nome do jogador 2: "
        nome = gets.chomp
        @p2 = Player.new('O',nome)

        @tab = Tabuleiro.new()
        @tab.inicializa_tabuleiro()
        @tab.mostra_tabuleiro()
        @anterior = @p2.symbol
    end

    def jogar
        if @anterior == @p2.symbol
            puts "#{@p1.nome} (#{@p1.symbol})  escolha onde marcar:"
            @jogador = @p1.symbol
        else
            puts "#{@p2.nome} (#{@p2.symbol}) escolha onde marcar:"
            @jogador = @p2.symbol
        end
        @jogada = gets.chomp
        test = @tab.atualiza_campo(@jogada,@jogador)

        if test == 1
            @tab.mostra_tabuleiro()
            @anterior = @jogador
        else
            puts "Jogada Invalida"
            puts "Tente Novamente"
            sleep 1
            system("cls")
            @tab.mostra_tabuleiro()
        end
    end    

    def vitoria(vencedor)
        system("cls")
        print " Jogador #{vencedor} Ganhou!!\n"
        print "  -----    Parabéns   -----\n"
    end

    def empate
        system("cls")
        print " ---  Empate ---\n"
        print " --- GameOver ---"
    end
        
end
