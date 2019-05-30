*** Settings ***
Documentation    Suite description
Resource    ../Pages/loginPage.robot



*** Keywords ***

navigate to homepage
    Open Browser To Login Page

input user and pass
    Input Username And Password

verify login succcess
    Verify Title Of Page