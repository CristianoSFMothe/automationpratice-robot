*** Settings ***
Documentation    Testes de logout da conta da loja

Resource        ../resources/base.robot

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Cenário 1 - Logout da conta da loja
    [Documentation]    Teste de realizar logout da conta da loja
    [Tags]             logout

    ${data}    Get Json Fixture    login    login

    Dado que o usuário está logado na loja  
    ...    ${data}[account][email]
    ...    ${data}[account][password]
    Quando ele clica no Logout
    Então o sistema deve redireciona-lo para a tela de login    
    ...    Logout realizado
    ...    Obrigado, e volte sempre!