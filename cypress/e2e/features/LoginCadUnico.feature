Feature: Realizar login no site TCU através do cadastro único do governo federal

    Scenario: Realizar login pelo CPF e senha com sucesso
        Given o usuário encontra-se na página de login do TCU
        When o usuário seleciona a opção de entrar com gov.br
        When o usuário digita o CPF corretamente
        When o usuário digita a senha corretamente
        Then o usuário deverá ser logado

    Scenario: Digitar CPF incorreto na tela de login
        Given o usuário encontra-se na página de login do TCU
        When o usuário seleciona a opção de entrar com gov.br
        When o usuário digita o CPF incorreto
        Then o usuário deverá receber a mensagem de CPF invalido

    Scenario: Digitar senha incorreta na tela de login
        Given o usuário encontra-se na página de login do TCU
        When o usuário seleciona a opção de entrar com gov.br
        When o usuário digita o CPF corretamente
        When o usuário digita a senha incorretamente
        Then o usuário deverá ser retornado para a tela de inserção de CPF com a mensagem de Usuário e/ou senha inválidos