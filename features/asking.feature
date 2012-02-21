Feature: Asking question
  In order to get answers from other students
  As a student
  I ask questions

  Scenario:
    Given that I'm already logged in
    When I click on the 'ask question' link
    And I fill in the question body and title
    Then the question should be visible on the 'latest questions' page
