*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_SEARCH_BAR} =    id=twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =    xpath=//*[@id="nav-search-submit-button"]

*** Keywords ***
Search Products
    Input Text  ${TOPNAV_SEARCH_BAR}    ${SEARCH_TERM}
    Click Button    ${TOPNAV_SEARCH_BUTTON}


