Then("Left unit picker value should be {string}") do |value|
  puts("Left unit picker value is " + value)
end

Then("Right unit picker value should be {string}") do |value|
  puts("Right unit picker value is " + value)
end

Then(/^Show all button should be (enabled|disabled|undefined)$/) do |state|
  if state == "enabled"
    puts("Button is enabled")
  elsif state == "disabled"
    puts("Button is disabled")
  end
end

When("I press on Clear button") do
  puts("Clear button is pressed")
end


When(/^I type "([^"]*)" to target text field$/) do |target|
  puts("target is #{target}")
end

Then(/^I should see result as "([^"]*)"$/) do |result|
  puts("result is #{result}")
end