*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/common_keywords.robot

*** Variables ***
${URL}              https://kintai.stg.jinjer.net
${BROWSER}          chrome
${USER_NAME}        //*[@id='company_code']
${EMAIL}            //*[@name = 'email']
${PASSWORD}         //*[@name='password']
${BTN_LOGIN}        //*[@id='jbtn-login-staff']
${DATE_TIME}        //*[@id="container"]//div[@class='group groupTime cf']/p[@class='dateTime']
${Title}            Time-Staff
*** Keywords ***

Open Browser To Login Page
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Input Username And Password
    Wait And Input Data     ${USER_NAME}    20192019
    Wait And Input Data     ${EMAIL}        1
    Wait And Input Data     ${PASSWORD}     12345678
    Wait And Click Element      ${BTN_LOGIN}

Verify Title Of Page
    wait until element is visible   ${DATE_TIME}    15
    ${Actual}=        get title
    should be equal     ${Actual}       ${Title}
