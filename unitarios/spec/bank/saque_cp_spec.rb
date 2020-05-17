require_relative '../../app/bank.rb'

describe ContaPoupanca do 

    describe 'Saque' do 
        context 'quandoValorPositivo' do 
            before(:all) do
                @cp = ContaPoupanca.new(1000.00)
                @cp.saca(200.00)
            end
            it 'entaoAtualizaSaldo' do 
                expect(@cp.saldo).to eql 797.00
            end
        end  
       
        context 'quandoSaldoZero' do 
            before(:all) do 
            @cp = ContaPoupanca.new(0.00)
            @cp.saca(100.00)
            end
            it 'entaoExibeMensagem' do 
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'eSaldoFinalZero' do 
                expect(@cp.saldo).to eql 0.00
            end

        end
       
        context 'quandoSaldoInsuficiente'do 
        before(:all) do 
            @cp = ContaPoupanca.new(500.00)
            @cp.saca(501.00)
            end
            it 'entaoExibeMsg' do 
                expect(@cp.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'eSaldoFinalEquivalenteAoInicial' do 
                expect(@cp.saldo).to eql 500.00
            end
        end

        context 'LimiteDiarioDeMilReais'do
        before(:all) do 
            @cp = ContaPoupanca.new(1000.00)
            @cp.saca(501.00)
            end
            it 'entaoExibeMensagemDeLimite' do 
                expect(@cp.mensagem).to eql 'Limite máximo por saque é de R$ 500'
            end
            it 'eSaldoFinalEquivalenteAoInicial' do 
                expect(@cp.saldo).to eql 1000.00
            end
        end

    end
end