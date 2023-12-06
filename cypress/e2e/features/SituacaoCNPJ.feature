Feature: Verificação de Certidões APF no site do TCU

  Scenario: Consulta com CNPJ correto
    Given o usuário encontra-se na página de certidões APF no site TCU
    When o usuário digita o CNPJ correto no espaço de pesquisa de consulta
    Then o usuário deve visualizar o resultado da pesquisa

  Scenario: Consulta com CNPJ incorreto
    Given o usuário encontra-se na página de certidões APF no site TCU
    When o usuário digita o CNPJ incorreto no espaço de pesquisa de consulta
    Then o usuário deve visualizar a mensagem de verificador inválido

  Scenario: Consulta sem CNPJ
    Given o usuário encontra-se na página de certidões APF no site TCU
    When o usuário não digita no espaço de pesquisa de consulta
    Then o usuário deve visualizar a mensagem de informar CNPJ
