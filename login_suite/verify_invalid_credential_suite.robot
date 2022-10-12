*** Settings ***
Documentation       This suite file handles testcases related to valid credentials

Resource            ../resource/base/CommonFunctionality.resource

Test Setup          Launch Browser And Navigate To OpenEMR
Test Teardown       Close Browser
Test Template       Verify Invalid Credential Template


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    id=clearPass    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Button    id=login-button
    Set Selenium Implicit Wait    5s
    
