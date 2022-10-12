*** Settings ***
Documentation    This suite file handles testcases related to valid credentials
...    connected with scenario- and tc-

Resource    ../resource/base/CommonFunctionality.resource

Test Setup    Launch Browser And Navigate To OpenEMR
Test Teardown    Close Browser

*** Test Cases ***
Verify valid credential test
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Button    id=login-button
    Set Selenium Implicit Wait    5s
    Title Should Be    OpenEMR
