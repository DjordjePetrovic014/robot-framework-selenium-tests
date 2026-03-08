*** Settings ***
Documentation    Basic info about the whole store
Resource        ../Resources/Common.robot
Resource        ../Resources/Amazon.robot
Task Setup      Common.Begin Web Test
Test Teardown   Common.End Web Test


*** Variables ***
${BROWSER} =        chrome
${START_URL} =      https://www.amazon.com
${SEARCH_TERM} =    Lamborghini Gallardo

${MY_VARIABLE} =    This is my input data

*** Test Cases ***
Set a variable in the test case
    [Tags]  Current
    ${my_new_variable} =  Set Variable  My new variable
    Log  ${my_new_variable}

Variable demonstration
    Log   ${MY_VARIABLE}

Variable demonstration 2
    Log   ${MY_VARIABLE}


*** Keywords ***
