@home_screen
Feature: Tests for Home screen functionality
  @default
  Scenario: Default values on Home screen are foot and centimeter
    Given I land on home screen
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

  Scenario: Show all button should be enabled at launch
    Given I land on home screen
    Then Show all button should be disabled
    When I type "1" on application keyboard
    Then Show all button should be enabled
  @conversions
  Scenario Outline: Verify default conversion
    Given I land on home screen
    When I type "<target>" on application keyboard
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


Scenario: User able to search by existing conversion type
  Given I land on home screen
  Then  I press Search icon
  Then I type "Temperature" in search field
  And I press return button on my keyboard
  Then I see "Temperature" as a current unit converter
  And Left unit picker value should be "Celsius"
  And Right unit picker value should be "Fahrenheit"

  Scenario Outline: User able to select values from Unit Pickers
    Given I land on home screen
    Then I press on Left unit picker and select "<unit_type>"
    When I type "<amount>" on application keyboard
    Then I should see result as "<result>"
  Examples:
  |unit_type|amount|result|
  |Inch     |1    |2.54   |
  |Link     |1    |20.1168|

  @wip
  Scenario: User able to convert values
    Given I land on home screen
    When I press on menu icon
    Then I select "Volume" from menu
    Then I press on Right unit picker and select "Cup"
    When I type "1" on application keyboard
    Then I should see result as "15.1416"