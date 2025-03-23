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