*** Settings ***
Documentation    Basic info about whole store
Resource    ../Resources/Amazon.robot
Resource    ../Resources/Common.robot
Suite Setup    Insert Testing Data
Test Setup    Common.Begin Web Test
Test Teardown   Common.End Web Test
Suite Teardown    Cleanup Testing Data

*** Variables ***


*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search For Products
    Amazon.Select Product from Search Results
    Amazon.Add Product To Cart
    Amazon.Begin Checkout