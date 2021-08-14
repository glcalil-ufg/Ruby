# O cachorro recebe a raça e o nome na inicialização. Não é
# permitido trocar a raça do cachorro depois de inicializado o
# objeto. O cachorro pode latir “au au!” por padrão ou
# personalizado através de parâmetro.
# Teste ao menos com 2 objetos.

class Cachorro
    attr_accessor :nome
    attr_reader :raca

    def initialize (nome, raca)
        @nome = nome
        @raca = raca
    end

    def latir(latido = "AU! AU!")
        latido
    end
end

dog1 = Cachorro.new("Sidious","BullDog")
dog2 = Cachorro.new("Anakin", "Rusk Siberiano")
puts "Nome do cachorro é: #{dog1.nome}"
puts "Raça do cachorro é: #{dog1.raca}"
puts dog1.latir
puts
puts "Nome do cachorro é: #{dog2.nome}"
puts "Raça do cachorro é: #{dog2.raca}"
puts dog2.latir("AUUUUUUU!")