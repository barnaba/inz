Feature: Editing
  In order to increase the quality of content and assure that it's current
  As a student
  I edit other students content

  Scenario:
    Given that I have enough reputation
    When I click the edit button
    Then I'm able to edit the content

  Scenario: own
    Given that I don't have enough reputation to edit other people's content
    When I click the edit button for my own content
    Then I'm able to edit the content
