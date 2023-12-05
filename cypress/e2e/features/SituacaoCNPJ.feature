Feature: Realizar consulta da situação de pessoa juridica no site TCU

    Scenario: Realizar consulta de situação de pessoa juridica com sucesso
        Given o usuário encontra-se na página de certidões APF no site TCU
        When o usuário digita o CNPJ correto no espaço de pesquisa de consulta
        Then o usuário deve visualizar o resultado da pesquisa

    Scenario: Realizar consulta de situação de pessoa jurifica com CNPJ incorreto
        Given o usuário encontra-se na página de certidões APF no site TCU
        When o usuário digita o CNPJ incorreto no espaço de pesquisa de consulta
        Then o usuário deve visualizar a mensagem de verificador inválido

    Scenario: Realizar consulta de situação de pessoa jurifica com espaço de pesquisa em branco
        Given o usuário encontra-se na página de certidões APF no site TCU
        When o usuário não digita no espaço de pesquisa de consulta
        Then o usuário deve visualizar a mensagem de informar CNPJ