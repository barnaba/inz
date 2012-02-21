Feature: Latest questions
  In order to access questions
  As a student
  I browse the list of posted questions

  Scenario:
    Given that there are questions
    And I'm on the 'latest questions' page
    When I click on the title of question
    Then I should see the question page
