*** Settings ***
Documentation    Testes de login e logout da conta da loja

Resource        ../resources/base.robot

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Cenário 1 - Login da conta da loja
    [Documentation]    Teste de realizar login da conta da loja
    [Tags]             login

    ${data}    Get Json Fixture    login    login

    Dado que o usuário realize login na conta    
    ...    ${data}[account][email]
    ...    ${data}[account][password]
    

    Quanto visualizar a mensagem de login realizado com sucesso
    ...    ${data}[account][email]
    
    Então venho o carrinho de compras
    ...    Acompanhe seu pedido