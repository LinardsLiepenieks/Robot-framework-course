*** Settings ***
Library    SeleniumLibrary
Resource    ../../../crm/Resources/CrmApp.robot

*** Variables ***
${LANDINGPAGE_URL} =              https://automationplayground.com/front-office/
${LANDINGPAGE_TITLE} =            class=intro-heading

*** Keywords ***
Navigate To
    Go to                          ${LANDINGPAGE_URL}
Verify Page Loaded
    Wait Until Page Contains Element       ${LANDINGPAGE_TITLE}