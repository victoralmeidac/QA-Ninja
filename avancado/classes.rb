

class Conta

    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais da conta do #{self.nome}"
        #puts 'Depositando a quantia de ' + valor.to_s + ' reais'
    end

    def saque(valor)
        self.saldo -= valor
        puts "Sacando a quantia de #{valor} reais da conta do #{self.nome}"
    end
end

    c = Conta.new('Victor')

    c.deposita(100.00)
    puts c.saldo
    c.deposita(10.00)
    c.saque(50.00)
    puts c.saldo
    puts c.nome