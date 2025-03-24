*** Settings ***

Resource    ../../resources/base.robot

*** Keywords ***
Get Json Fixture
    [Arguments]    ${file_name}    ${scenario}

    ${data}    Load Json From File    
    ...        resources/fixtures/${file_name}.json
    ...        encoding=utf-8
    
    RETURN    ${data}[${scenario}]

