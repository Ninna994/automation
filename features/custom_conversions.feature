Feature: User able to make and manage custom conversions

  Scenario: User able to create new conversion
    Given I land on home screen
    When I press on menu icon
    And I press on My conversions button
    Then I press Create your first conversion button
    And I type "Power"
    When I press on new unit button
    Then I type "Horse power" as unit Name
    Then I type "HP" as unit Symbol
    Then I type "1" as unit Value
    Then I press submit Check mark on Custom conversion right top screen
    Then I press on new unit button
    Then I type "Mule power" as unit Name
    Then I type "MP" as unit Symbol
    Then I type "0.5" as unit Value
    Then I press submit Check mark on Custom conversion right top screen
    When I press ok button on custom conversions screen
    Then I verify "Power" added to Custom conversions list

