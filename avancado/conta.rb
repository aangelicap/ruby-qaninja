class Conta
    attr_accessor :saldo, :nome

    def initialize(nome)
        self.saldo = 0.0 #definir tipo - inicializar variavel 
        self.nome = nome
    end
    
    def deposito(valor)
        self.saldo += valor #acessa obj da propria classe
       # puts 'Recebendo o valor de ' + valor.to_s + ' reais.'
       puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}."
    end
end

c = Conta.new('angelica')


c.deposito(100.00)
c.deposito(20.00)
c.deposito(20.00)
c.deposito(20.00)
c.deposito(20.00)

