
Feature: Login no EstoqueLab
  Como usuário da plataforma
  Quero realizar meu login
  Para acessar as funcionalidades do EstoqueLab

  Scenario: LOGIN-001 - Exibir a tela de login
    Given que acesso a plataforma EstoqueLab
    Then devo visualizar o título "Entrar no EstoqueLab"
    And devo visualizar o campo de usuário
    And devo visualizar o campo de senha
    And devo visualizar o botão de entrar

  Scenario: LOGIN-002 - Realizar login com credenciais válidas
    Given que estou na tela de login
    When informo o usuário "admin"
    And informo a senha "123456"
    And clico no botão de entrar
    Then devo acessar a plataforma
    And devo visualizar o usuário "admin"

  Scenario: LOGIN-003 - Impedir login com credenciais inválidas
    Given que estou na tela de login
    When informo um usuário inválido
    And informo uma senha inválida
    And clico no botão de entrar
    Then devo visualizar a mensagem "Usuário ou senha inválidos."

  Scenario: LOGIN-004 - Realizar login mantendo o usuário conectado
    Given que estou na tela de login
    When informo credenciais válidas
    And seleciono a opção de manter o usuário conectado
    And clico no botão de entrar
    Then a opção de manter o usuário conectado deve estar selecionada
    And devo acessar a plataforma
    And devo visualizar o usuário "admin"

  Scenario: LOGIN-005 - Impedir login sem preencher os campos
    Given que estou na tela de login
    When tento realizar o login sem informar usuário e senha
    Then o campo de usuário deve apresentar validação de preenchimento obrigatório
    And o campo de senha deve apresentar validação de preenchimento obrigatório

  Scenario: LOGIN-006 - Impedir login sem informar o usuário
    Given que estou na tela de login
    When informo uma senha válida
    And tento realizar o login sem informar o usuário
    Then o campo de usuário deve apresentar validação de preenchimento obrigatório

  Scenario: LOGIN-007 - Impedir login sem informar a senha
    Given que estou na tela de login
    When informo um usuário válido
    And tento realizar o login sem informar a senha
    Then o campo de senha deve apresentar validação de preenchimento obrigatório

  Scenario: LOGIN-008 - Impedir login com senha incorreta
    Given que estou na tela de login
    When informo o usuário "admin"
    And informo uma senha incorreta
    And clico no botão de entrar
    Then devo visualizar a mensagem "Usuário ou senha inválidos."

  Scenario: LOGIN-009 - Impedir login com usuário inexistente
    Given que estou na tela de login
    When informo um usuário inexistente
    And informo uma senha
    And clico no botão de entrar
    Then devo visualizar a mensagem "Usuário ou senha inválidos."
