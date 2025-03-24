*** Settings ***
Documentation    Steps de keywords da página inicial da loja virtual

Resource    ../base.robot

*** Keywords ***

Dado que o usuário realize login na conta
    [Arguments]        ${email}    ${password}    

    Click                      ${login.linkLogin}

    Wait For Elements State    ${login.title}    visible
    ${title}    Get Text       ${login.title}
    Fill Input Login           ${email}    ${password}     

Quanto visualizar a mensagem de login realizado com sucesso
    [Arguments]    ${email}
   
    Wait For Elements State    ${myAccount.loginSuccessful}    visible
    ${text}    Get Text        ${myAccount.loginSuccessful}
    Wait For Elements State    css=.swal2-html-container >> text=Olá, ${email}    visible
    Click                      ${myAccount.btnOK}

Então venho o carrinho de compras
  [Arguments]    ${expected_text}

  ${element}    Set Variable    css=.right_list_fix >> text=${expected_text}

  Wait For Elements State   ${element}    visible
  ${text}    Get Text       ${element}

Fill Input Login
    [Arguments]    ${email}    ${password}    

    Click        ${login.inputEmail}
    Fill Text    ${login.inputEmail}    ${email}

    Click        ${login.inputPassword}
    Fill Text    ${login.inputPassword}    ${password}

    Click        ${login.btnLogin}    

    