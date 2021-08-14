class  Animal
    # @patas
    # @raca = nil

    # def set_patas(patas)
    #     @patas = patas
    # end

    # def get_patas()
    #     return @patas 
    # end

    # def set_raca(raca)
    #     @raca = raca
    # end

    # def get_raca()
    #     return @raca 
    # end
    
    #attr_reader leitura || attr_writer escrita
    attr_accessor :patas
    attr_accessor :raca

    def initialize (patas , raca)
        @patas = patas
        @raca = raca
    end

    def emitir_som(som = "lati")
        "Esse animal #{som}"
    end
    def se_locomover(movimento = "corre")
        return "Esse animal #{movimento}"
    end
end


obj1 = Animal.new(2,"nada")
obj2 = Animal.new(4,"Gato")
# obj.set_patas(2)
# obj.set_raca("Cachorro")
# puts obj.get_patas
# puts obj.get_raca
obj1.patas = 4
obj1.raca = "Cachorro"
puts obj1.raca
puts obj1.emitir_som
puts "Tem #{obj1.patas} patas"

puts obj2.raca
puts "Tem #{obj2.patas} patas"
puts obj2.se_locomover