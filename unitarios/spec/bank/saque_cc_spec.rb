require_relative '../../app/bank.rb'

describe ContaCorrente do 

    describe 'Saque' do 
        context 'quandoValorPositivo' do 
            before(:all) do
                @cc = ContaCorrente.new(1000.00)
                @cc.saca(200.00)
            end
            it 'entaoAtualizaSaldo' do 
                expect(@cc.saldo).to eql 795.00
            end
        end  
       
        context 'quandoSaldoZero' do 
            before(:all) do 
            @cc = ContaCorrente.new(0.00)
            @cc.saca(100.00)
            end
            it 'entaoExibeMensagem' do 
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'eSaldoFinalZero' do 
                expect(@cc.saldo).to eql 0.00
            end

        end
       
        context 'quandoSaldoInsuficiente'do 
        before(:all) do 
            @cc = ContaCorrente.new(500.00)
            @cc.saca(501.00)
            end
            it 'entaoExibeMsg' do 
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'eSaldoFinalEquivalenteAoInicial' do 
                expect(@cc.saldo).to eql 500.00
            end
        end

        context 'LimiteDiarioDeMilReais'do
        before(:all) do 
            @cc = ContaCorrente.new(1000.00)
            @cc.saca(701.00)
            end
            it 'entaoExibeMensagemDeLimite' do 
                expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end
            it 'eSaldoFinalEquivalenteAoInicial' do 
                expect(@cc.saldo).to eql 1000.00
            end
        end

    end
end