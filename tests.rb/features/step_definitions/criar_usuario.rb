Quando("eu cadastro meu usuario") do
    user.load
    user.preencher_usuario

    sleep (5)
end

Entao("eu verifico se o usuario foi cadastrado") do 
    texto= find('#notice')
    expect(@texto.text).to eql 'Usuario criado com sucesso'

end

