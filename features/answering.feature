Feature: Answering question
  In order to help fellow students and feel better about myself
  As a student
  I answer other student's (or my own) questions

  Scenario: The "add answer" form exists
    Given that I'm logged in
    When I click on the question title
    Then I should see the "add answer" form

  Scenario: Adding answer
    Given that I'm logged in
    And that I'm on the question page
    When I fill in the "add answer" form with answer
    And I click the "submit" button
    Then I should see the question page
    And I should see my answer
