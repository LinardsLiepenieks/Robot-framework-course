*** Settings ***
Documentation    Keywords for working with amazon webiste

Resource    PO/LandingPage.robot
Resource    PO/TopNav.robot
Resource    PO/SearchResults.robot
Resource    PO/Product.robot
Resource    PO/Cart.robot
Resource    PO/SignIn.robot

*** Keywords ***
Search for Products
    LandingPage.Load
    LandingPage.Verify Page Loaded
    TopNav.Search Products
    SearchResults.Verify Page Loaded
    

Select Product from Search Results
    SearchResults.Open Result
    Product.Verify Page Loaded

Add Product to Cart
    Product.Add Product To Cart
    Cart.Verify Page Loaded
    
Begin Checkout
    Cart.Proceed To Checkout
    SignIn.Verify Page Loaded

