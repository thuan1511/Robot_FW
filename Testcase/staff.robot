*** Settings ***
Documentation    Suite description
Resource  ../Steps/login_Step.robot
Resource  ../Steps/staffScreen_Step.robot

*** Test Cases ***

Verify Title Of Page
    [Tags]    testlogin
    Given navigate to homepage
    When input user and pass
    Then verify login succcess

Verify UI Of Staff Screen
    [Tags]      staffscreen
    Given Verify Button Checkin Checkout
    When Verify Datetime Display
    Then Verify Menu Of Staff Screen