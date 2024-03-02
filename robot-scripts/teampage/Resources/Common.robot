*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Keywords ***
Begin Web Test
    [Documentation]    Beginning web test
    Set Selenium Timeout    10s
    Open Browser            about:blank    ${BROWSER}
    Go To                   ${URL}    
    Set Window Position     x=0    y=0
    Set Window Size         width=1920    height=1080

End Web Test
    [Documentation]    Finishing web test
    Close All Browsers