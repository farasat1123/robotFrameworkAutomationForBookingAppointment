Feature: Book an Appointment

  Scenario: Booking an appointment on the CURA Healthcare Service
    Given I navigate to the CURA Healthcare homepage
    When I click on the "Make Appointment" button
    Then I should see the login page
    When I log in as "John Doe" with password "ThisIsNotAPassword"
    Then I should be redirected to the appointment page
    When I make an appointment for a future date
    Then I should see the appointment in the history
    And I should log out successfully
