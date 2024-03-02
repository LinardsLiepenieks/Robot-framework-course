*** Settings ***
Resource    PO/Landing.robot
Resource    PO/Team.robot
Resource    PO/TopNav.robot

*** Variables ***


*** Keywords ***
Navigate To "Landing"
    Landing.Navigate To
    Landing.Verify Page Loaded
Navigate To "Team"
    TopNav.Click "Team" Link
    Team.Verify Page Loaded

Validate "Team" Page
    Team.Validate Page Contents
