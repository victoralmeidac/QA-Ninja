

describe 'Meu primeiro script' do

    it 'visitar uma pagina' do
        visit 'https://training-wheels-protocol.herokuapp.com/'
        expect(page.title).to eql 'Training Wheels Protocol' 
    end

end