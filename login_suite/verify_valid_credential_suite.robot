*** Settings ***
Documentation    This suite file handles testcases related to valid credentials
...    connected with scenario- and tc-

Library    SeleniumLibrary

*** Test Cases ***
Verify valid credential test
    Open Browser    browser=chrome    executable_path=C:${/}Users${/}edevgay${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    https://demo.openemr.io/b/openemr
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)
    Click Button    id=login-button
    Set Selenium Implicit Wait    5s
    Title Should Be    OpenEMR
