
describe 'Botões de Radio', :radio do

    before(:each) do
        visit '/radios'
    end

    it 'seleção por Id' do
        choose('cap')
    end

    it 'seleção ' do
        find('input[value=guardians]').click
    end
    
    after(:each) do
        sleep 3
    end
end