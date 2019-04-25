

class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo    
    end

    def ligar
        puts "#{nome} esta pronto para o trajeto"
    end

    def buzinar
        puts 'beeep beeep'
    end

end

class Carro < Veiculo

    def dirigir
        puts "#{nome} iniciou o trajeto"
    end
end

class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciou o trajeto"
    end

end

civic = Carro.new('Civic', 'Honda', 'Si')
    
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'Mitisubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir

lancer = Moto.new('Fan', 'Honda', 'CG150')
lancer.ligar
lancer.buzinar
lancer.pilotar