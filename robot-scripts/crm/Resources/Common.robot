*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Keywords ***
Begin Web Test
    #Set Selenium Speed        .1s
    Set Selenium Timeout      10s
    Open Browser              ${URL}        ${BROWSER}
    Set Window Position       x=350    y=200
    Set Window Size           width=1500    height=1000
    Wait Until Page Contains  Customers Are Priority One!

End Web Test
    Close All Browsers