*** Settings ***
Documentation    Steps de keywords para realizar cadastro na conta

Resource    ../base.robot

*** Keywords ***
Quando ele preenche os campos obrigatórios com dados válidos e confirma o cadastro
    [Arguments]    ${name}    ${email}    ${password}

    Wait For Elements State    ${register.title}    visible
    Get Text                   ${register.title} 
    Fill Input Name            ${name}
    Fill Input Email           ${email}
    Fill Input Password        ${password}
    Click                      ${register.btnRegister}

    E confirma o cadastro      ${name}


Quando deixa o campo "Nome" em branco e preenche os outros campos obrigatórios
    [Arguments]    ${name}    ${email}    ${password}

    Wait For Elements State    ${register.title}    visible
    Get Text                   ${register.title} 
    Fill Input Name            ${name}
    Fill Input Email           ${email}
    Fill Input Password        ${password}
    Click                      ${register.btnRegister}

Então o sistema exibe a mensagem de erro de campo obrigatório
    [Arguments]    ${output_message}

    ${element}     Set Variable    css=#errorMessageFirstName >> text=${output_message}

    Wait For Elements State       ${element}    visible
    ${message}    Get Text        ${element}
