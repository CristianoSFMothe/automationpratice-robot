*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***
Fill Input Name
    [Arguments]    ${name}

    Click        ${register.inputName}
    Fill Text    ${register.inputName}    ${name}

Fill Input Email
    [Arguments]    ${email}

    Click        ${register.inputEmail}
    Fill Text    ${register.inputEmail}    ${email}

Fill Input Password
    [Arguments]    ${password}

    Click        ${register.inputPassword}
    Fill Text    ${register.inputPassword}    ${password}

Get Json Fixture
    [Arguments]    ${file_name}    ${scenario}

    ${data}    Load Json From File    
    ...        resources/fixtures/register.json
    ...        encoding=utf-8
    
    RETURN    ${data}[${scenario}]

