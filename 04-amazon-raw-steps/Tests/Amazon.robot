*** Settings ***
Documentation    Basic info about whole store
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot

Test Setup    Common.Begin Web Test
Test Teardown   Common.End Web Test


*** Variables ***


*** Test Cases ***
Logged out user can search for products
    [Tags]  Smoke
    Amazon.Search for Products

Logged out user can view a product
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results

Logged out user can add product to cart
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart

Logged out user must sign in to check out
    [Tags]  Smoke
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout

Logged out user can complete shopping flow until sign in
    [Tags]    E2E
    Amazon.Search for Products
    Amazon.Select Product from Search Results
    Amazon.Add Product to Cart
    Amazon.Begin Checkout