

describe 'Login 2', :login2 do

    before(:each) do
        visit '/login2'
    end

    it 'com data de nascimento' do

        fill_in 'userId', with: 'stark'
        fill_in 'password', with: 'jarvis!'

        login_form = find('#login')

        case login_form.text
        when /Dia/
            find('#day').set '29'
        when /Mês/
            find('#month').set '05'
        when /Ano/
            find('#year').set '1970'
        end
        sleep 2

        click_button 'Login'

        expect(find('#flash').visible?).to be true
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
    
end