@main_menu
Feature: As a user I want to convert units

  Scenario: When I tap on menu icon, i should see left side menu
    Given I land on home screen
    When I press on menu icon
    Then I should see left side menu

  Scenario: I should be able to open My conversions screen
    Given I land on home screen
    When I press on menu icon
    And I press on My conversions button
    Then I land on My conversions screen
