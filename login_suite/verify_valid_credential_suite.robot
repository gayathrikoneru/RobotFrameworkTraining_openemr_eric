*** Settings ***
Documentation       This suite file handles testcases related to valid credentials

Resource            ../resource/base/CommonFunctionality.resource

Test Setup          Launch Browser And Navigate To OpenEMR
Test Teardown       Close Browser
Test Template       Verify Valid Credential Template


*** Test Cases ***
TC1    admin    pass    English (Indian)    OpenEMR

TC2
    physician    physician    English (Indian)    OpenEMR

# TC3
#     [Template]    NONE    #works without giving NONE also (for [Setup] and [Teardown] as well)
#     [Setup]    NONE
#     Log To Console    sample tc
#     [Teardown]    NONE
# TC4
#     [Template]    Logging Template
#     [Setup]    NONE
#     hello world!
#     [Teardown]    NONE


*** Keywords ***
Verify Valid Credential Template
    [Arguments]    ${username}    ${password}    ${language}    ${expected_title}
    Input Text    id=authUser    ${username}
    Input Password    id=clearPass    ${password}
    Select From List By Label    name=languageChoice    ${language}
    Click Button    id=login-button
    Set Selenium Implicit Wait    5s
    Title Should Be    ${expected_title}

# Logging Template
#     [Arguments]    ${arg}
#     Log To Console    ${arg}