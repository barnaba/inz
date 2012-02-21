Feature: searching
  In order to find questions, answers and exams
  As a student
  I use search

  Scenario: 
    Given that I'm on the search page
    When I type "algorytmy" in the search form
    Then I should see questions related to Algorytmy
