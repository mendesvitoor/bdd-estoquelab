Feature: Cadastro de produtos no EstoqueLab
  Como usuário autenticado
  Quero cadastrar produtos na plataforma
  Para manter o estoque atualizado

  Scenario: PRODUTO-001 - Cadastrar um produto físico ativo
    Given que estou autenticado no EstoqueLab
    And estou na tela de produtos
    When acesso o formulário de cadastro de produto
    And informo um nome de produto válido
    And informo um SKU válido
    And seleciono a categoria "Eletrônicos"
    And seleciono o tipo "Físico"
    And mantenho o produto como ativo
    And informo o preço "199.90"
    And informo a quantidade em estoque "50"
    And informo o estoque mínimo "5"
    And informo a validade "31/12/2027"
    And confirmo o cadastro do produto
    Then devo visualizar a mensagem "Produto cadastrado com sucesso!"
