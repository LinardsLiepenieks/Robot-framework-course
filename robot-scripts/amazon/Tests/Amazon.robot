*** Settings ***

Resource    ../Resources/AmazonApp.robot
Resource    ../Resources/Common.robot
Test Setup    Begin Web Test
Test Teardown    End Web Test
*** Variables ***
${BROWSER} =    chrome
${START_URL} =    https://www.amazon.com
${SEARCH_TERM} =     Phone
*** Test Cases ***
Logged out user should be asked to sign in to check out
    [Documentation]    Example of conteinarization approach in robot framework
    [Tags]    Smoke

    #NEED TO INPUT AMAZON CAPTCHA MANUALLY IF ASKED
    
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin Checkout


    
