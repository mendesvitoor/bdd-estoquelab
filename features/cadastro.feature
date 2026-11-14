
Feature: Cadastro de usuários no EstoqueLab
  Como visitante da plataforma
  Quero realizar meu cadastro
  Para obter acesso ao EstoqueLab

  Scenario: CADASTRO-001 - Cadastrar um novo usuário com sucesso
    Given que estou na tela de cadastro
    When informo um nome de usuário ainda não cadastrado
    And informo uma senha válida
    And confirmo o cadastro
    Then devo visualizar a mensagem "Usuário cadastrado com sucesso!"

  Scenario: CADASTRO-002 - Cadastrar um usuário e realizar login
    Given que estou na tela de cadastro
    When informo um novo nome de usuário
    And informo uma senha válida
    And confirmo o cadastro
    Then devo visualizar a mensagem "Usuário cadastrado com sucesso!"
    And devo retornar à tela de login
    And o campo de usuário deve estar preenchido com o usuário cadastrado
    When informo a senha cadastrada
    And clico no botão de entrar
    Then devo visualizar a mensagem "Login realizado com sucesso!"

  Scenario: CADASTRO-003 - Impedir cadastro sem preencher os campos
    Given que estou na tela de cadastro
    When tento realizar o cadastro sem informar usuário e senha
    Then o campo de usuário deve apresentar validação de preenchimento obrigatório
    And o campo de senha deve apresentar validação de preenchimento obrigatório

  Scenario: CADASTRO-004 - Impedir cadastro sem informar o usuário
    Given que estou na tela de cadastro
    When informo uma senha válida
    And tento realizar o cadastro sem informar o usuário
    Then o campo de usuário deve apresentar validação de preenchimento obrigatório

  Scenario: CADASTRO-005 - Impedir cadastro sem informar a senha
    Given que estou na tela de cadastro
    When informo um nome de usuário
    And tento realizar o cadastro sem informar a senha
    Then o campo de senha deve apresentar validação de preenchimento obrigatório

  Scenario: CADASTRO-006 - Impedir cadastro de usuário já existente
    Given que estou na tela de cadastro
    And existe um usuário previamente cadastrado
    When tento cadastrar novamente o mesmo nome de usuário
    Then o cadastro duplicado não deve ser concluído
    And devo permanecer na tela de cadastro
