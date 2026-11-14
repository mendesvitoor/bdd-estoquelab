# BDD - EstoqueLab

Repositório dedicado à documentação de cenários de teste utilizando **BDD (Behavior-Driven Development)** e **Gherkin**, com base nas funcionalidades da plataforma EstoqueLab.

O objetivo é demonstrar a aplicação de técnicas de análise e documentação de cenários de teste, transformando comportamentos e regras da aplicação em especificações claras, estruturadas e compreensíveis.

## Objetivo do projeto

Este projeto tem como objetivo praticar e demonstrar conhecimentos em:

- BDD (Behavior-Driven Development);
- Linguagem Gherkin;
- Estruturação de cenários de teste;
- Identificação de cenários positivos e negativos;
- Documentação de comportamentos esperados;
- Organização de cenários por funcionalidades.

Os cenários foram elaborados com base nas funcionalidades disponíveis na plataforma EstoqueLab e também servem como referência para os testes automatizados desenvolvidos em Playwright/Cypress/Selenium.

## Tecnologias e conceitos

| Tecnologia / Conceito | Utilização |
|---|---|
| Gherkin | Escrita e estruturação dos cenários |
| BDD | Descrição dos comportamentos esperados |
| Markdown | Documentação do projeto |
| Git / GitHub | Versionamento e compartilhamento |

## Estrutura do projeto

```text
bdd-estoquelab/
├── features/
│   ├── login.feature
│   ├── cadastro.feature
│   └── produto.feature
└── README.md
```

### Organização das Features

**Login (`login.feature`)**

Cenários relacionados à autenticação de usuários, incluindo:
- Acesso à tela de login;
- Login com credenciais válidas;
- Tentativas de login com credenciais inválidas;
- Opção de manter o usuário conectado;
- Validação de campos obrigatórios;
- Tentativas com senha incorreta e usuário inexistente.

**Cadastro (`cadastro.feature`)**

Cenários relacionados ao cadastro e autenticação de novos usuários, incluindo:
- Cadastro de novo usuário;
- Cadastro seguido de login;
- Validação de campos obrigatórios;
- Tentativa de cadastro com usuário já existente.

**Produto (`produto.feature`)**

Cenários relacionados ao cadastro de produtos, incluindo:
- Cadastro de produto físico ativo;
- Preenchimento de informações gerais;
- Seleção de categoria e tipo de produto;
- Preenchimento de preço, estoque, estoque mínimo e validade;
- Validação da confirmação de cadastro.

## Padrão de escrita dos cenários

Os cenários utilizam a estrutura Gherkin, baseada nas palavras-chave:

| Palavra-chave | Finalidade |
|---|---|
| Feature | Representa a funcionalidade documentada |
| Scenario | Define um cenário de comportamento |
| Given | Define o contexto inicial |
| When | Descreve a ação realizada |
| Then | Define o resultado esperado |
| And | Complementa as etapas anteriores |

### Exemplo

```gherkin
Feature: Login no EstoqueLab

  Scenario: LOGIN-002 - Realizar login com credenciais válidas
    Given que estou na tela de login
    When informo o usuário "admin"
    And informo a senha "123456"
    And clico no botão de entrar
    Then devo acessar a plataforma
    And devo visualizar o usuário "admin"
```

Os cenários são identificados por códigos únicos, facilitando sua rastreabilidade e associação com os respectivos testes automatizados.

## Relação com a automação de testes

Este repositório possui relação com o projeto de automação E2E desenvolvido utilizando Playwright e TypeScript.

A documentação BDD descreve os comportamentos esperados da aplicação, enquanto o projeto Playwright contém a implementação dos testes automatizados correspondentes.

**Projeto de automação:** [Playwright - EstoqueLab](https://github.com/mendesvitoor/playwright-estoquelab)

## Ambiente de testes

Os cenários foram elaborados com base na plataforma:

[EstoqueLab](https://estoquelab.netlify.app/)

A plataforma foi disponibilizada para a realização de atividades de estudo e automação de testes.

## Observações

Este repositório possui finalidade educacional e de portfólio, com foco na prática de documentação de cenários de teste utilizando BDD e Gherkin.

Os arquivos `.feature` representam especificações documentadas dos comportamentos esperados. Não há, neste projeto, execução automatizada dos arquivos por meio de Cucumber.

---

Desenvolvido para estudos e demonstração de práticas de QA e Qualidade de Software.