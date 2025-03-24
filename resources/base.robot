*** Settings ***

# Configurations
Resource    ../resources/configs/Libs.resource

# Hooks
Resource    ../resources/utils/OpenPage.resource
Resource    ../resources/utils/commonKeywords.resource

# Pages Keywords
Resource    ../resources/pages/homePage.resource
Resource    ../resources/pages/registerPage.resource
Resource    ../resources/pages/myAccountPage.resource

# Variables
Variables    ../resources/locators/registerLocators.yml
Variables    ../resources/locators/homeLocators.yml
Variables    ../resources/locators/myAccountLocators.yml