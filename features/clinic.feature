Feature: Login in Clinic functionality

  Background:
    Given A user on the login page
    And A user fill in Username with "admin"
    And A user fill in Password with "Admin123"
    And A user choose Outpatient Clinic location for the session
    When A user press Login in button
    Then A user should be on the users home page and see "Logged in"
  
  Scenario: Find Patient
    Given A user on the home page
    And A user navigate to Find Patient Record
    And A user fill Search Field with "John Smith"
    And A user verify that table contains required columns "Identifier", "Name", "Gender", "Age" "Birthdate"
    When A user verify that columns are not empty
    Then A user can see information about patient
    