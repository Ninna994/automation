# Cucumber and Ruby

## Table of Contents

1. [Cucumber folder structure](#cucumber-folder-structure)
1. [.feature file structure](#feature-file-structure)
1. [Cucumber keywords](#cucumber-keywords)
1. [Cucumber functionalities](#cucumber-functionalities)
1. [Ruby](#ruby)
1. [Functionalities in Ruby](#functionalities-in-ruby)
1. [Terminal commands](#terminal-commands)
1. [UI Automator Viewer](#ui-automator-viewer)

## Cucumber folder structure

```ruby
  folder_name
    features - required folder
      area.feature
      area2.feature
      step_definition - required folder
        area_step.rb
        area2_step.rb
      support
        env.rb - file in which we set parameters for testing
        hooks.rb - file in which we create hooks
```

## .feature file structure

```ruby
  Feature: Description
  Scenario: Description
  # Steps with keywords --> Steps are reusable accross feature files
  Given step
  When step
  And step
  Then step
  But step
```

## Cucumber keywords

Cucumber keywords are **Given**, **When**, **Then**, **And**, **But**. They are userd to make logical sense between steps. We can use any prefix we wan and the step will work because cucumber does **not** add prefix as part of step.

## Cucumber functionality

1. Set parameter in feature file

   ```ruby
    Given Description "parameter"
   ```

1. Make Scenario Outline when you need to execute multiple steps with many values

   ```ruby
    Scenario Outline:
      #Steps
    Given
    When I type "<value1_name>"
    Then I should see "<value2_name>"
    And See also "<value3_name>"
    Examples:
    |value1_name|value2_name|value3_name|
    |val1       |val2       |val3       |
    |val1       |val2       |val3       |

   ```

1. **@Tags** Are used for grouping tests in Cucumber

   ```ruby
    @name
    Scenario or Step or Feature
   ```

1. **Hooks** are used  to execute anything we need to do before or after Test Scenario. Two hooks cucumber has are **Before** and **After**

   ```ruby
    Before do
      # anything that needs to be done before Test Scenario
      # launch Appium for example
    end
    After do
      # anything that needs to be done after Test Scenario
      # kill Appium for example
      # Send screenshots of device if test fails for example
    end
   ```

## Ruby

1. _puts_ - command that prints message

   ```ruby
    puts("message")
   ```

1. _|arg|_ - local variable that lives between do and end

   ```ruby
    |var|
    puts(var)
   ```

1. *find_element(id: "id")* - find element by resource id
1. *find_element(accessibility_id: "content desc")* - used when we target element with content description
1. *text("text")* - used when we need to find element by text
1. *.click* - for click event in Appium

## Functionality in Ruby

1. Taking parameter as part of step

   ```ruby
    Then('condition {string} or "([^"]*)"') do |arg|
      puts("message" + arg)
    end
   ```

1. Set key values that can be accepted

   ```ruby
    Given(Description (option1|option2|option3)) do |state|
    end
   ```

1. **if elsif** statement

   ```ruby
      if state == "option1"
        do this
      elsif state == "option2"
        do this
      end
   ```

1. Pass variable inside string with **#{var}**

   ```ruby
    Then('condition {string} or "([^"]*)"') do |arg|
      puts("message #{string}")
    end
   ```

## Terminal commands

1. _cucumber_ - executes every test scenario in every .feature file
1. _cucumber -t @name_ - executes scenario or feature file with @name tag
1. _adb device_ - which device is connected to computer
1. _uiautomatorviewer_ - starts automator viewer

## UI Automator Viewer

1. Takes screenshot of device. On the right side are elements and their properties. If we don't have any **resource_id** we can target element by **content description**. Or in edge cases by **text**.