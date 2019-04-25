require_relative '../../app/bank'

describe ContaCorrente do

        describe 'Saque' do
            context 'quando o valor é positivo' do
                before(:all) do
                    @cc = ContaCorrente.new(1000.00)
                    @cc.saque(200)
                end
            it 'entao atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
            end
            end

            context 'quando meu saldo é zero' do
                before(:all) do
                    @cc = ContaCorrente.new(0.00)
                    @cc.saque(100)
                end
                it 'então exibe mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
                end
                it 'e o saldo final com zeros' do
                    expect(@cc.saldo).to eql 0.00
                end
            end

            context 'quando saldo é insufiente' do
                before(:all) do
                    @cc = ContaCorrente.new(500.00)
                    @cc.saque(501.00)
                end
                it 'então exibe mensagem' do
                    expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
                end
                it 'e o saldo permanece' do
                    expect(@cc.saldo).to eql 500.00
                end
            end

            context 'quando supera o limite de saque' do
                before(:all) do
                    @cc = ContaCorrente.new(1000.00)
                    @cc.saque(701.00)
                end
                it 'então exibe mensagem' do
                    expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
                end
                it 'e o saldo permanece' do
                    expect(@cc.saldo).to eql 1000.00
                end
            end
        end
end