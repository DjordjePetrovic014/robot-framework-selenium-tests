*** Settings ***
Documentation    My first end to end suite
Resource  ../../Data/InputData.robot
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup          Begin Web Test
Test Teardown       End Web Test

# robot -d 80-end-to-end/Results 80-end-to-end/Tests/EndToEnd/End_to_End.robot
# robot -d 80-end-to-end/Results 80-end-to-end/Tests


*** Test Cases ***
Should be able to access both sites
    [Documentation]     This is test 1
    [Tags]              test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page

