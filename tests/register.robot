*** Settings ***
Documentation    Testes de cadastro de usuário

Resource        ../resources/base.robot

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Cenário 1 - Cadastro bem-sucedido
    [Documentation]    Teste de cadastro de usuário com sucesso
    [Tags]             create

    ${data}    Get Json Fixture    register    create

    Dado que o usuário acessa a página de cadastro da loja virtual
    Quando ele preenche os campos obrigatórios com dados válidos e confirma o cadastro    
    ...    ${data}[account][name]
    ...    ${data}[account][email]
    ...    ${data}[account][password]

Cenário 2 - Tentativa de cadastro com nome em branco
    [Documentation]    Teste de cadastro de usuário com nome em branco
    [Tags]             emptyName

    ${data}    Get Json Fixture    register    emptyName

    Dado que o usuário acessa a página de cadastro da loja virtual
    Quando deixa o campo Nome em branco e preenche os outros campos obrigatórios   
    ...    ${data}[account][name]
    ...    ${data}[account][email]
    ...    ${data}[account][password]
    Então o sistema exibe a mensagem de erro de campo obrigatório
    ...    output_message=O campo nome deve ser prenchido

Cenário 3 - Tentativa de cadastro com email em branco
    [Documentation]    Teste de cadastro de usuário com e-mail em branco
    [Tags]             emptyEmail

    ${data}    Get Json Fixture    register    emptyEmail

    Dado que o usuário acessa a página de cadastro da loja virtual
    Quando deixa o campo E-mail em branco e preenche os outros campos obrigatórios   
    ...    ${data}[account][name]
    ...    ${data}[account][email]
    ...    ${data}[account][password]
    Então o sistema exibe a mensagem de erro de campo obrigatório
    ...    output_message=O campo e-mail deve ser prenchido corretamente

Cenário 4 - Tentativa de cadastro com senha em branco
    [Documentation]    Teste de cadastro de usuário com senha em branco
    [Tags]             emptyPassword

    ${data}    Get Json Fixture    register    emptyPassword

    Dado que o usuário acessa a página de cadastro da loja virtual
    Quando deixa o campo Senha em branco e preenche os outros campos obrigatórios   
    ...    ${data}[account][name]
    ...    ${data}[account][email]
    ...    ${data}[account][password]
    Então o sistema exibe a mensagem de erro de campo obrigatório
    ...    output_message=O campo senha deve ter pelo menos 6 dígitos
    

Cenário 5 - Tentativa de cadastro com senha fraca
    [Documentation]    Teste de cadastro de usuário com senha fraca
    [Tags]             weakPassword

    ${data}    Get Json Fixture    register    weakPassword

    Dado que o usuário acessa a página de cadastro da loja virtual
    Quando informar a Senha fraca e preenche os outros campos obrigatórios 
    ...    ${data}[account][name]
    ...    ${data}[account][email]
    ...    ${data}[account][password]
    Então o sistema exibe a mensagem de erro de campo obrigatório
    ...    output_message=O campo senha deve ter pelo menos 6 dígitos