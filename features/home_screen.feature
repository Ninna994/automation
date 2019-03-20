@home_screen
Feature: Tests for Home screen functionality
  @default
  Scenario: Default values on Home screen are foot and centimeter
    Given I land on home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"
  Scenario: Show all button should be enabled at launch
    Given I land on home screen
    Then Show all button should be enabled
    When I press on Clear button
    Then Show all button should be disabled
    @conversions
  Scenario Outline: Verify default conversion
    Given I land on home screen
    When I type "<target>" to target text field
    Then I should see result as "<result>"
    Examples:
    |target|result|
    |1     |12    |
    |2     |24    |
    |3     |36    |
    |8     |96    |
