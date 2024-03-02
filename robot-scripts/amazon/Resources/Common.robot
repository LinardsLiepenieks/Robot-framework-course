*** Settings ***
Documentation    Common keywords for the project
Library    SeleniumLibrary
*** Keywords ***
Begin Web Test
    Open Browser   about:blank    ${BROWSER}

End Web Test
    Close Browser