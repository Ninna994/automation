@home_screen
Feature: Tests for Home screen functionality
  Background:
    Given I land on home screen
  @default
  Scenario: Default values on Home screen are foot and centimeter
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"

  Scenario: Show all button should be enabled at launch
    Then Show all button should be disabled
    When I type "1" on application keyboard
    Then Show all button should be enabled
  @conversions
  Scenario Outline: Verify default conversion
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
  Then I press on Add to favourites star icon
  Then I press on menu icon
  Then I press on favourite conversions
  And I verify "Length" added to favourite conversions list

@wip
Scenario: User able to search by existing conversion type
  Then  I press Search icon
  Then I type "Temperature" in search field
  And I press return button on my keyboard
  Then I see "Temperature" as a current unit converter
  And Left unit picker value should be "Celsius"
  And Right unit picker value should be "Fahrenheit"

  Scenario Outline: User able to select values from Unit Pickers
    Then I press on Left unit picker and select "<unit_type>"
    When I type "<amount>" on application keyboard
    Then I should see result as "<result>"
  Examples:
  |unit_type|amount|result|
  |Inch     |1    |2.54   |
  |Link    |1    |20.1168|

  Scenario: User able to convert values
    When I press on menu icon
    Then I select "Volume" from menu
    Then I press on Right unit picker and select "Cup"
    When I type "1" on application keyboard
    Then I should see result as "15.1416"

  Scenario: User able to switch values
    Then Left unit picker value should be "Foot"
    And Right unit picker value should be "Centimeter"
    When I press on switch units button
    Then Left unit picker value should be "Centimeter"
    And Right unit picker value should be "Foot"


  Scenario: User able to see history and delete inputs inside it
    When I press on menu icon
    And I select "History" from menu
    Then I see "History" as a current unit converter
    And I should see text "No history right now"

    Then I press on menu icon
    Then I select "Length" from menu
    Then I type "1" on application keyboard

    Then I press on menu icon
    And I select "History" from menu
    Then I verify that 1st result in history list is "Length"

    When I press delete from history at 1st row
    And I should see text "No history right now"
