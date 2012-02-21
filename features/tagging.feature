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
