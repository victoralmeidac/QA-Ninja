

describe 'Meu primeiro script', :smoke  do

    it 'visitar uma pagina' do
        visit '/'
        expect(page.title).to eql 'Training Wheels Protocol' 
    end

end