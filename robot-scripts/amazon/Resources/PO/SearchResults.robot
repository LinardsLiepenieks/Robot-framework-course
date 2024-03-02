*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains    Results

Open Result
    [Documentation]    Opens FIRST result link
    Click Link     xpath=(//*[@data-component-type="s-search-result"])[1]//a
