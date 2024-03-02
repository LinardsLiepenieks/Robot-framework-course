*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TOPNAV_LINK_TEAM} =            css=a[href="#team"]

*** Keywords ***    
Click "Team" Link
    Click Element    ${TOPNAV_LINK_TEAM}
    Sleep            3s    
