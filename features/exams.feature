Feature: Exams
  In order to make studying more efficient
  As a student
  I organize questions in sets called exams

  Scenario: Creating the exam
    When I click on the 'create exam link'
    Then I should be able to edit the newly created exam
    And add existing questions to it
    And add new questions to it

  Scenario: Adding a question to exam
    Given that I'm on the question page
    When I click on the 'add this question to exam link'
    Then I should be able to choose exam
    And add the question to this exam
