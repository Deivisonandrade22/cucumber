class User < SitePrism:page
    set_url 'users/new'
    element :nome, '#user_name'
    element :sobrenome, '#user_lastname'
    element :Email, '#user_email'
    element :Endereco, '#user_adress'
    element :Profissao, '#user_profile'
    element :Genero, '#user_genero'
    element :Idade, '#user_age'
    element :Universidade, '#user_university'

    element :criar, 'input[value="Criar"]'

    def preencher_usuario

        nome.set 'Maria'
        sobrenome.set 'Silva'
        email.set 'maria.silva@gmail.com'
        endereco.set 'Rua aeroporto, 3'
        universidade.set 'Puc Minas'
        idade.set '28'
        profissao.set 'Piloto'
        genero.set 'Masculino'
        criar.click
    end
end