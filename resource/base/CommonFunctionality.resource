*** Settings ***
Documentation    This file handles the configuration and reusable keywords

Library    SeleniumLibrary

*** Keywords ***
Launch Browser And Navigate To OpenEMR
    Open Browser    browser=chrome    executable_path=C:${/}Users${/}edevgay${/}chromedriver.exe
    Maximize Browser Window
    Set Selenium Implicit Wait    20s
    Go To    https://demo.openemr.io/b/openemr