*** Settings ***
Documentation       This suite file handles testcases related to valid credentials

Resource            ../resource/base/CommonFunctionality.resource

Test Setup          Launch Browser And Navigate To OpenEMR
Test Teardown       Close Browser
Test Template       Verify Invalid Credential Template


*** Test Cases ***
TC1    john    john123    English (Indian)    Invalid username or password

TC2    kaira    kaira145    Danish    Invalid username or password


*** Keywords ***
Verify Invalid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_error}
    Input Text    id=authUser    ${username}
    Input Password    id=clearPass    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Button    id=login-button
    Set Selenium Implicit Wait    5s
    Element Should Contain    //div[contains(text(),'Invalid')]    ${expected_error}