*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TEAM_PAGE_TITLE} =            //*[@id="team"]/div/div[1]/div/h2
*** Keywords ***
Verify Page Loaded
    Page Should Contain Element    ${TEAM_PAGE_TITLE}

Validate Page Contents
    ${Element text} =    Get Text    ${TEAM_PAGE_TITLE}
    Should Be Equal As Strings    ${Element text}    OUR AMAZING TEAM    ignore_case=true
