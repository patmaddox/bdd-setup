Feature: Create a person
  In order to blah
  Admin will need to create people

  Scenario: It works
    Given I am at the new person page
    And I fill in "First name" with "Pat"
    And I fill in "Last name" with "Maddox"
    When I press "Submit"
    Then I should see "hello Pat Maddox"
