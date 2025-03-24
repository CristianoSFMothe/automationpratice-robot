*** Settings ***
Documentation    Steps de keywords da página inicial da loja virtual

Resource    ../base.robot

*** Keywords ***

Dado que o usuário está logado na loja  
    [Arguments]        ${email}    ${password}    

    Click                      ${login.linkLogin}

    Wait For Elements State    ${login.title}    visible
    ${title}    Get Text       ${login.title}
    Fill Input Login           ${email}    ${password}     
    Click                      ${myAccount.btnOK}   

Quando ele clica no Logout

    Wait For Elements State    ${login.btnAccount}    visible
    Click                      ${login.btnAccount}

    Wait For Elements State    ${login.btnLogout}    visible
    Click                      ${login.btnLogout}

Então o sistema deve redireciona-lo para a tela de login
    [Arguments]    ${title}    ${expected_text}
    
    ${el_title}    Set Variable    css=h2 >> text=${title}

    Wait For Elements State    ${el_title}    visible
    ${text}    Get Text        ${el_title}

    ${el_subtitle}    Set Variable    css=#swal2-html-container >> text=${expected_text}
    Wait For Elements State    ${el_subtitle}    visible
    ${text}    Get Text        ${el_subtitle}

    Click                      ${myAccount.btnOK} 

    Wait For Elements State    ${login.title}    visible
    ${title}    Get Text       ${login.title}    

Fill Input Login
    [Arguments]    ${email}    ${password}    

    Click        ${login.inputEmail}
    Fill Text    ${login.inputEmail}    ${email}

    Click        ${login.inputPassword}
    Fill Text    ${login.inputPassword}    ${password}

    Click        ${login.btnLogin}    