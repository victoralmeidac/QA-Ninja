
describe 'Upload', :upload do

    before(:each) do

        visit '/upload'
        @arquivo = Dir.pwd + '/spec/fixture/arquivo.txt'
        @imagem = Dir.pwd + '/spec/fixture/download.jpg'
    end

    it 'upload com arquivo texto' do
    attach_file('file-upload', @arquivo)
    click_button('Upload')

    div_arquivo = find('#uploaded-file')
    expect(div_arquivo.text).to eql 'arquivo.txt'
    end

    it 'upload de imagem', :upload_imagem do
        attach_file('file-upload', @imagem)
        click_button('Upload')

        puts Capybara.default_max_wait_time
        # sleep 5
        img = find('#new-image')
        expect(img[:src]).to include '/uploads/download.jpg'
    end

    after(:each) do
        sleep 3
    end
end