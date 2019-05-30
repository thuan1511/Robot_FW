*** Settings ***
#Library      SeleniumLibrary

*** Keywords ***
Wait And Input Data
    [Arguments]     ${locator}  ${text}
    Wait Until Element Is Visible   ${locator}  10
    input text  ${locator}  ${text}

Wait And Click Element
    [Arguments]     ${locator}
    wait until element is visible   ${locator}      10
    click button    ${locator}