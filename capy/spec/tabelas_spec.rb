
describe 'Tabelas', :tabs, :smoke do
    before(:each) do
        visit '/tables'
    end

    it 'deve exibir o salario do stark' do
        
        atores = all('table tbody tr')
        stark = atores.detect { |ator| ator.text.include?('Robert Downey Jr') }
        puts stark.text
        expect(stark.text).to include '10.000.000'
    end

    it 'deve exibir o salario do vin diesel' do
        diesel = find('table tbody tr', text:'@vindiesel')
        expect(diesel).to have_content '10.000.000'
    end

    it 'deve exibir o filme velozes' do
        diesel = find('table tbody tr', text:'@vindiesel')

        movie = diesel.all('td')[2].text
        expect(movie).to eql 'Fast & Furious'
    end

    it 'deve exibir o inta do Chris Evans' do
        chris = find('table tbody tr', text: '@teamcevans')
        insta = chris.all('td')[4].text

        expect(insta).to eql '@teamcevans'
    end

    it 'deve selecionar Chris Prat para remoção' do
        prat = find('table tbody tr', text: '@prattprattpratt')
        del = prat.find('a', text:'delete').click

        msg = page.driver.browser.switch_to.alert.text

        expect(msg).to eql 'Chris Pratt foi selecionado para remoção!'

        page.driver.browser.switch_to.alert.accept
    end

    it 'deve selecionar Chris Prat para edição' do
        prat = find('table tbody tr', text: '@prattprattpratt')
        del = prat.find('a', text:'edit').click

        msg = page.driver.browser.switch_to.alert.text

        expect(msg).to eql 'Chris Pratt foi selecionado para edição!'
        
        page.driver.browser.switch_to.alert.accept
    end
end