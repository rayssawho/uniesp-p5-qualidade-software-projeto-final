Feature: Verificar a autenticidade de documentos no site do TCU

    Scenario: Realizar a verificação de documentos válidos
        Given o usuário encontra-se na página de autenticidade de documentos do site TCU
        When o usuário digita um código de documento correto na barra de pesquisa
        Then o usuário deve visualizar o resultado da validação

    Scenario: Realizar a verificação de documentos invalidos
        Given o usuário encontra-se na página de autenticidade de documentos do site TCU
        When o usuário digita um código de documento incorreto na barra de pesquisa
        Then o usuário deve visualizar o resultado de documento não encontrado

    Scenario: Realizar a verificação do espaço da pesquisa em branco
        Given o usuário encontra-se na página de autenticidade de documentos do site TCU
        When o usuário não digita no espaço de pesquisa de consulta
        Then o usuário deve visualizar a mensagem de informação obrigatória