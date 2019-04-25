#Ruby é uma linguagem considerada puramente orientada a objetos
#Porque no Ruby tudo são objetos

#Classe possui atributos e metodos
#Caracteristicas e ações

#Carro (nome, marca, cor, modelo etc...) - atributo
#Ligas, Businar, Parar etc... - metodos

class Carro

    attr_accessor :nome
    def ligar
        puts 'O carro está pronto para o trajeto'
    end
end

civic = Carro.new

civic.nome = 'Civic'

puts civic.nome
civic.ligar

