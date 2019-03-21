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
    |1     |30.48    |
    |2     |60.96    |
    |3     |91.44    |
    |10     |304.8   |
    |1011   |30 815.28|

Scenario: User is able to add current conversion to Favourites list
  Given I land on home screen
  Then I press on Add to favourites star icon
  Then I press on menu icon
  Then I press on favourite conversions
  And I verify "Length" added to favourite conversions list

@wip
Scenario: User able to search by existing conversion type
  Given I land on home screen
  Then  I press Search icon
  Then I type "Temperature" in search field
  And I press return button on my keyboard
  Then I see "Celsius" as a current unit converter
  And Left unit picker value should be "Celsius"
  And Right unit picker value should be "Fahrenheit"
