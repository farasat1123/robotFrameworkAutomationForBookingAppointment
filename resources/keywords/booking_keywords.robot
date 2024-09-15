*** Settings ***
Library    SeleniumLibrary
Resource   ../locators/appointmentWebLocators.robot

*** Keywords ***
Navigate To CURA Homepage
    [Documentation]  Navigate to the CURA Healthcare homepage
    Open Browser  https://katalon-demo-cura.herokuapp.com/  chrome

Click On Make Appointment Button
    [Documentation]  Click the "Make Appointment" button
    Click Element  ${MAKE_APPOINTMENT_BUTTON}

Should See Login Page
    [Documentation]  Verify the login page is displayed
    Location Should Contain  ${LOGIN_PAGE_URL}

Log In As John Doe With Password ThisIsNotAPassword
    [Documentation]  Log in with username and password
    Input Text  ${USERNAME_FIELD}  John Doe
    Input Text  ${PASSWORD_FIELD}  ThisIsNotAPassword
    Click Button  ${LOGIN_BUTTON}

Should Be Redirected To Appointment Page
    [Documentation]  Verify redirection to the appointment page
    Location Should Contain  ${APPOINTMENT_PAGE_URL}

Make Appointment For Future Date
    [Documentation]  Make an appointment for a future date
    Input Text  ${VISIT_DATE_FIELD}  19/07/2024
    Input Text  ${COMMENT_FIELD}  Automation Test
    Click Button  ${BOOK_APPOINTMENT_BUTTON}

Should See Appointment In History
    [Documentation]  Verify the appointment is listed in the history
    Click Element  ${MENU_TOGGLE}
    Click Element  ${HISTORY_LINK}
    Location Should Contain  ${HISTORY_PAGE_URL}
    Page Should Contain  19/07/2024

Log Out Successfully
    [Documentation]  Log out from the application
    Click Element  ${MENU_TOGGLE}
    Click Element  ${LOGOUT_LINK}
    Location Should Contain  ${BASE_URL}
