*** Settings ***
Documentation    Steps de keywords da página inicial da loja virtual

Resource    ../base.robot

*** Keywords ***
Dado que o usuário acessa a página de cadastro da loja virtual

    Wait For Elements State    ${home.navLogo}    visible
    Click                      ${home.linkRegister}