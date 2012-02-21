Feature: voting
  In order to help other students decide which answers are helpful
  As a student
  I vote on answers

  Scenario: voting on answers
    Given that I'm on the question page
    When I click the 'upvote' link on answer
    Then sum of votes for the answer should increment
    And the 'upvote' button should no longer be visible

  Scenario: voting on questions in exams
    Given that I'm on the exam page
    When I click the 'upvote' link on question
    Then sum of votes for the question should increment
    And the 'upvote' button should no longer be visible

  Scenario: voting on exams
    Given that I'm on the exam page
    And the exam's score is low
    When I downvote the exam
    Then sum of votes for it should decrement
    And it should be removed

  Scenario: bad question
    Given that I'm on exam page
    And one answer has low score
    When I downvote that answer
    Then sum of votes for it should decrement
    Then it should be removed from exam
    But still available in other exams

  Scenario: reputation for answers
    Given that I'm on the question page
    When I upvote an answer
    Then the reputation of answer's author should increment

  Scenario: reputation for questions
    Given that I'm on exam page
    When I upvote the question
    Then the reputation of the user who added this question to this exam should increment
