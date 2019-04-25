
class AvengersHeadQuarter

    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
        
    end
end

#TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do

    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('SpiderMan')
        expect(hq.list).to eql ['SpiderMan']
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('SpiderMan')

        res = hq.list.size > 0

        expect(hq.list.size).to be > 0
        expect(res).to be true
    end

    it 'thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('SpiderMan')

        expect(hq.list).to start_with('Thor')
    end

    it 'IronMan deve ser o ultimo da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('SpiderMan')
        hq.put('IronMan')

        expect(hq.list).to end_with('IronMan')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match (/Parker/)
        expect(avenger).not_to match (/Papito/)
    end
end