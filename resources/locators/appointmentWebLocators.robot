*** Settings ***
Library    OperatingSystem

*** Variables ***
${MAKE_APPOINTMENT_BUTTON}    xpath=//*[@id="btn-make-appointment"]
${LOGIN_PAGE_URL}             /profile.php#login
${USERNAME_FIELD}             id=txt-username
${PASSWORD_FIELD}             id=txt-password
${LOGIN_BUTTON}               id=btn-login
${APPOINTMENT_PAGE_URL}       /#appointment
${VISIT_DATE_FIELD}           id=txt_visit_date
${COMMENT_FIELD}              id=txt_comment
${BOOK_APPOINTMENT_BUTTON}    id=btn-book-appointment
${MENU_TOGGLE}                id=menu-toggle
${HISTORY_LINK}              xpath=//a[contains(text(), 'History')]
${HISTORY_PAGE_URL}          /history.php#history
${LOGOUT_LINK}               xpath=//a[contains(text(), 'Logout')]
${BASE_URL}                  https://katalon-demo-cura.herokuapp.com/
