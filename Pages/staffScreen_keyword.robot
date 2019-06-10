*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/common_keywords.robot

*** Variables ***
${Datetime}             //div[@class='group groupTime cf']/p[@class='dateTime']
${BtnCheckin}           //div[@class='btnText' and normalize-space()='Going to work']/parent::button
${BtnCheckout}          //div[@class='btnText' and normalize-space()='Leaving work']/parent::button
${Fixtimecard_Menu}     //div[@class='requestBlock cf']//a/span[text()='Fix timecards Application']
*** Keywords ***
Verify Button Checkin Available
    wait until element is visible       ${BtnCheckin}   5
    Element Should be Enabled           ${BtnCheckin}
Verify Button Checkout Available
    wait until element is visible       ${BtnCheckout}   5
    Element Should Be Disabled          ${BtnCheckout}
Verify Datetime Is Visible
    wait until element is visible       ${Datetime}     5
    Element Should Be Visible           ${Datetime}
Verify Menu Fixtimecard Visible
    wait until element is visible       ${Fixtimecard_Menu}     5
    Element Should Be Visible           ${Fixtimecard_Menu}