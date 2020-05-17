class AvengersHeadQuarter
    attr_accessor :list

    def initialize
        self.list = []
    end
    def put(avenger)
        self.list.push(avenger)
    end
end

describe AvengersHeadQuarter do

    it 'deveAdicionarUmVingador' do
    hq = AvengersHeadQuarter.new

    hq.put('Spiderman')
    expect(hq.list).to eql ['Spiderman']
    end

    it 'deveAdicionarListadeVingadores' do 
    hq = AvengersHeadQuarter.new

    hq.put('Spiderman')
    hq.put('Thor')
    hq.put('Hulk')

    res = hq.list.size > 0
    
    expect(hq.list).to include 'Thor'
    expect(res).to be true
    end

    it 'thorDeveSerPrimeiroNaLista' do
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Spiderman')
        hq.put('Hulk')

        expect(hq.list). to start_with 'Thor'

    end

    it 'deveConterSobrenome' do 
    avenger = 'Peter Parker'
        
        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/angelica/)
    
    end


end