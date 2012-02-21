Feature: Logging in
  In order to be recognized for my work
  As a student
  I log in with my ISOD credentials

  Scenario: Good credentials
    Given I'm on the login page
    When I input my username and password into the login form
    And click the 'login' button
    Then I should be logged in

  Scenario: Already authenticated with ISOD
    Given that I'm already logged in on the ISOD page
    When I got to any of the system pages
    Then i should be already logged in
