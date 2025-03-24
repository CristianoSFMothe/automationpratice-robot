*** Settings ***
Documentation    Steps de keywords para página de dashboard

Resource    ../base.robot

*** Keywords ***
E confirma o cadastro
    [Arguments]    ${name}
   
    Wait For Elements State    ${myAccount.registerSuccessful}    visible
    ${text}    Get Text        ${myAccount.registerSuccessful}
    Wait For Elements State    css=.swal2-html-container >> text=Bem-vindo ${name}    visible
    Click                      ${myAccount.btnOK}

    ${title}    Get Title
    ${current_url}    Get Url

    Should Be Equal As Strings    ${title}          QAZANDO Shop E-Commerce
    Should Be Equal As Strings    ${current_url}    https://automationpratice.com.br/my-account


    

    # ${title}    Get Title
    # ${current_url}    Get Url

    # Should Be Equal As Strings    ${title}          QAZANDO Shop E-Commerce
    # Should Be Equal As Strings    ${current_url}    https://automationpratice.com.br/my-account