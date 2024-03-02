*** Settings ***
Resource   PO/Home.robot
Resource   PO/Customers.robot
Resource   PO/AddCustomer.robot
Resource   PO/SignIn.robot
Resource   PO/TopNav.robot
Resource   PO/LoggedOut.robot

*** Variables ***


*** Keywords ***
Go to "Home" Page
    Home.Navigate To

Login With Valid Credentials
    [Arguments]    ${Email}    ${Password}
    TopNav.Click "Sign In" Link
    SignIn.Login With Valid Credentials    ${Email}    ${Password}
    Customers.Verify Page Loaded

Add New Customer
    Customers.Click Add Customer Link
    AddCustomer.Verify Page Loaded
    AddCustomer.Add New Customer
    Customers.Verify Customer Added Successfully

Sign Out
    TopNav.Click "Sign Out" Link
    



