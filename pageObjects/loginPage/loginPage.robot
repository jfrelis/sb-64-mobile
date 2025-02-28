*** Settings ***
Documentation         Login page keywords related
Variables             login-page-locators.yaml
Variables             static-data.yaml

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${INVALID_USERNAME}      jojo@ngendigital.com


*** Keywords ***
Verify Sign In Screen Appears
    Wait Until Element Is Visible        locator=${username_input}

Input Username
    [Arguments]       ${username}
    Input Text        locator=${username_input}        text=${username}

Input Password
    [Arguments]       ${password}
    Input Text        locator=${password_input}        text=${password}

Click Sign In Button
    Click Element        locator=${sign_in_button}

Login
    [Arguments]    ${username}=${VALID_USERNAME}    ${password}=${VALID_PASSWORD}
    Verify Sign In Screen Appears
    Input Username    username=${username}
    Input Password    password=${password}
    Click Sign In Button
    