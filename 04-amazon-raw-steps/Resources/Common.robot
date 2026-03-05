*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser                            about:blank      chrome
    Maximize Browser Window
    Set Selenium Speed                      1s

End Web Test
    Close Browser

Insert Testing Data
    Custom Keyword 1
    Custom Keyword 2

Insert Testing Data
    Log    I am setting up the test data...

Cleanup Testing Data
    Log    I am cleaning up the test data...

Custom Keyword 1
    Log    Doing keyword 1
Custom Keyword 2
    Log    Doing keyword 2...