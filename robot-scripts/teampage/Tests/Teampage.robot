*** Settings ***
Resource    ../Resources/TeampageApp.robot
Resource    ../Resources/Common.robot
Test Setup        Common.Begin Web Test
Test Teardown     Common.End Web Test
*** Variables ***
${URL} =    https://automationplayground.com/front-office/
${BROWSER} =    chrome
*** Test Cases ***
Should be able to access "Team" page
    [Documentation]    Accessing team page
    [Tags]             001    Team
    TeampageApp.Navigate To "Landing"
    TeampageApp.Navigate To "Team"

"Team" page should match requirements
    [Documentation]    Assessing team page
    [Tags]             002    Team
    TeampageApp.Navigate To "Landing"
    TeampageApp.Navigate To "Team"
    TeampageApp.Validate "Team" Page
