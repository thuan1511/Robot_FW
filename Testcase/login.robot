*** Settings ***
Documentation    Suite description
Resource  ../Steps/loginStep.robot
*** Test Cases ***
Verify Title Of Page
    [Tags]    DEBUG
    Given navigate to homepage
    When input user and pass
    Then verify login succcess

