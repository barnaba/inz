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

Feature: Asking question
  In order to get answers from other students
  As a student
  I ask questions

  Scenario:
    Given that I'm already logged in
    When I click on the 'ask question' link
    And I fill in the question body and title
    Then the question should be visible on the 'latest questions' page

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

Feature: Latest questions
  In order to access questions
  As a student
  I browse the list of posted questions

  Scenario:
    Given that there are questions
    And I'm on the 'latest questions' page
    When I click on the title of question
    Then I should see the question page

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
  
Feature: searching
  In order to find questions, answers and exams
  As a student
  I use search

  Scenario: 
    Given that I'm on the search page
    When I type "algorytmy" in the search form
    Then I should see questions related to Algorytmy

Feature: tagging
  In order to organize content
  As a student
  I use tags

  Scenario: tagging piece of content
    Given that I'm on the edit answer/question/exam page
    And there's a "tags" field visible
    When I input new tag
    And click 'save'
    Then the answer/question/exam should be tagged with that tag

  Scenario: browsing tagged content
    Given that I'm not editing content
    When I click on tag
    Then I should see list of content tagged with this tag

Feateure: Exams
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

Feature: Editing
  In order to increase the quality of content and assure that it's current
  As a student
  I edit other students content

  Scenario:
    Given that I have enough reputation
    When I click the edit button
    Then I'm able to edit the content

  Scenario own
    Given that I don't have enough reputation to edit other people's content
    When I click the edit button for my own content
    Then I'm able to edit the content
