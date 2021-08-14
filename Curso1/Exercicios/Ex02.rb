# O papagaio é inicializado com nome e idade. Os dois
# podem ser alterados após a inicialização. O método
# repetir_frase deve usar um parâmetro com a frase a ser
# repetida. Caso não seja passado parâmetro o papagaio
# deve “dizer” “curupaco!”.

class Papagaio 
    attr_accessor :nome
    attr_accessor :idade

    def repetir_frase(dizer="curupaco")
        dizer
    end
end

ave1 = Papagaio.new
ave2 = Papagaio.new
ave1.nome = "Obi"
ave1.idade = 2
ave2.nome = "Ahsoka"
ave2.idade = 1

print "Nome: #{ave1.nome}\nIdade: #{ave1.idade}\n"
print "Repita: "
print "#{ave1.repetir_frase(gets.chomp)}\n\n"

print "Nome: #{ave2.nome}\nIdade: #{ave2.idade}\n"
print "Repita: "
print "#{ave2.repetir_frase()}\n\n"