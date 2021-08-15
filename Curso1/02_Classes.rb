class  Animal
    # @patas
    # @nome = nil

    # def set_patas(patas)
    #     @patas = patas
    # end

    # def get_patas()
    #     return @patas 
    # end

    # def set_nome(nome)
    #     @nome = nome
    # end

    # def get_nome()
    #     return @nome 
    # end
    
    #attr_reader leitura || attr_writer escrita
    attr_accessor :patas
    attr_accessor :nome

    def initialize (nome, patas)
        @nome = nome
        @patas = patas
    end

    def emitir_som(som = "lati")
        "Esse animal #{som}"
    end
    def se_locomover(movimento = "corre")
        return "Esse animal #{movimento}"
    end
end

class Mamifero < Animal
    attr_accessor :ambiente, :cor 

    def initialize (nome, patas,ambiente, cor)
        super(nome,patas)
        @ambiente = ambiente
        @cor = cor
    end

    def self.teste
        print "Self é independente de objeto"
    end
end

Const = 10 #letras maisculas para contante 
puts Const 
obj1 = Animal.new(2,"nada")
obj2 = Mamifero.new("Baleia",0,"Aquatico", "Cinza")
# obj.set_patas(2)
# obj.set_nome("Cachorro")
# puts obj.get_patas
# puts obj.get_nome
obj1.patas = 4
obj1.nome = "Cachorro"
puts obj1.nome
puts obj1.emitir_som
puts "Tem #{obj1.patas} patas"
# Const = 15 #obs da pra alterar uma contante mas tem aviso
# puts Const
puts obj2.nome
puts "Tem #{obj2.patas} patas"
puts obj2.se_locomover("nada")
puts obj2.ambiente
puts obj2.cor

puts "\n #{Mamifero.teste}"