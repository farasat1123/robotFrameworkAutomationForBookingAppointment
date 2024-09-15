*** Settings ***
Library    SeleniumLibrary
Resource   ../../resources/keywords/booking_keywords.robot

*** Test Cases ***
Booking an Appointment
    [Tags]    smoke
    Navigate To CURA Homepage
    Click On Make Appointment Button
    Should See Login Page
    Log In As John Doe With Password ThisIsNotAPassword
    Should Be Redirected To Appointment Page
    Make Appointment For Future Date
    Should See Appointment In History
    Log Out Successfully
