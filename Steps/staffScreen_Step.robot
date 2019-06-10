*** Settings ***
Documentation    Suite description
Resource    ../Pages/staffScreen_keyword.robot

*** Keywords ***

Verify Button Checkin Checkout
    Verify Button Checkin Available
    Verify Button Checkout Available
Verify Datetime Display
    Verify Datetime Is Visible
Verify Menu Of Staff Screen
    Verify Menu Fixtimecard Visible