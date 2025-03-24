*** Settings ***

Resource    ../../resources/base.robot

*** Variables ***

${BASE_URL}        https://automationpratice.com.br/
${BROWSER}         chromium
${IS_HEADLESS}     False

*** Keywords ***

Start Browser
    
    New Browser    browser=${BROWSER}    headless=${IS_HEADLESS}
    New Context    recordVideo={"dir": "videos/"}
    New Page       ${BASE_URL}  
     

Finish Browser

    Take Screenshot        fullPage=true   
    Close Browser

