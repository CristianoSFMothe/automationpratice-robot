*** Settings ***
Documentation    Testes de cadastro de usuário

Resource        ../resources/base.robot

Test Setup       Start Browser
Test Teardown    Finish Browser

*** Test Cases ***
Cenário 1 - Cadastro bem-sucedido

    Dado que o usuário acessa a página de cadastro da loja virtual
    Quando ele preenche os campos obrigatórios com dados válidos e confirma o cadastro    
    ...    name=Cristiano Ferreira
    ...    email=cristiano@email.com
    ...    password=Abc@123

    Sleep    3


