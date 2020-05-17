class Veiculo
    attr_accessor  :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar
        puts "#{nome} esta pronto para iniciar o trajeto."
    end

    def buzinar
        puts "Beep! Beep!"
    end
end



class Carro < Veiculo

    def dirigir 
        puts "#{nome} iniciando o trajeto..."
    end

end


class Moto < Veiculo

    def pilotar 
        puts "#{nome} iniciando o trajeto..."
    end

end

up = Carro.new('Up', 'VW', 'TSI')
up.ligar
up.buzinar
up.dirigir

hilux = Carro.new('Hilux', 'Toyota', 'Model')
hilux.ligar
hilux.dirigir

fazer = Moto.new('Fazer', 'yamaha', '250x')
fazer.ligar
fazer.buzinar
fazer.pilotar