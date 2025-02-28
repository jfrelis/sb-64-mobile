*** Settings ***
Resource            ../pageObjects/base.robot
Resource            ../pageObjects/homePage/homePage.robot
Resource            ../pageObjects/loginPage/loginPage.robot
Test Setup          Run Keywords        Open Flight Application    
...                 AND    Verify Sign In Screen Appears
Test Teardown       Close Flight Application


# Test Setup -> Case 1 -> Tear Teardown
# Test Setup -> Case 2 -> Test Teardown

# Suite Setup -> Case 1 -> Case 2 -> Suite Teardown


# Input Password
# Click Sign In Button On Sign In Screen
# Verify User Sucessfully Login

*** Test Cases ***
User Should Be Able To Login with Valid Data
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${VALID_USERNAME}

User Should Not Be Able To Login with Unregistered Data
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username    username=${INVALID_USERNAME}
