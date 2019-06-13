Quando("eu faço login com {string} e {string}") do |email, password|
    visit "/"
    find("#emailId").set email
    find("#passId").set password
    click_button "Entrar"
end

Então("devo ser autenticado") do
    js_script = 'return window.localStorage.getItem("default_auth_token");'
    token = page.execute_script(js_script)
    expect(token.length).to be 147
end

Então("devo ver {string} na área logada") do |expect_name|
    user = find('.sidebar-wrapper .user .info span')
    expect(user.text).to eql expect_name
end