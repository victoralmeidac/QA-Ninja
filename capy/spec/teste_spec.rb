

describe 'teste', :go do

    before(:each) do
        visit 'https://www.google.com.br/'
    end

    it 'teste com google' do

        fill_in 'q', with: 'Mercado Livre'
        
        pesquisar = find('input[value="Pesquisa Google"]')
        pesquisar.click

        site = find('a[href="https://www.mercadolivre.com.br/"]')
        site.click

        fill_in 'as_word', with: 'Iphone'
        pesquisar2 = find('i[class="nav-icon-search"]')
        pesquisar2.click 

    end

    after(:each) do
        sleep 3
    end
end