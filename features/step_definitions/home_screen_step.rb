Then("Left unit picker value should be {string}") do |unit1|
  actual_picker_text = find_elements(id: "select_unit_spinner")[0].text
  if actual_picker_text != unit1
    fail("Expected left unit picker value is #{unit1}, actual value is #{actual_picker_text}")
  end

end

Then("Right unit picker value should be {string}") do |unit2|
  actual_picker_text = find_elements(id: "select_unit_spinner")[1].text
  if actual_picker_text != unit2
    fail("Expected right unit picker value is #{unit2}, actual value is #{actual_picker_text}")
  end
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
  digits = target.split("")
  digits.each do |num|
    find_element(id: "keypad").find_element(xpath: "//android.widget.Button[@text='#{num}']").click
  end

end

Then(/^I should see result as "([^"]*)"$/) do |result|
  results = find_element(id: "target_value").text
  if results != result
    fail("Expected result is #{result} and actual result is #{results}")
  end

end

Then(/^I press on Add to favourites star icon$/) do
  find_element(id: "action_add_favorites").click
end

Then(/^I press on favourite conversions$/) do
  text("Favorite conversions").click
end

And(/^I verify "([^"]*)" added to favourite conversions list$/) do |unit_type|
  text("#{unit_type}")
end

Then(/^I press Search icon$/) do
  find_element(id: "action_search").click
end

Then(/^I type "([^"]*)" in search field$/) do |search_text|
  find_element(id: "search_src_text").send_keys(search_text)
end

And(/^I press return button on my keyboard$/) do
  Appium::TouchAction.new.tap(x:0.99, y:0.99, count:1).perform
end

Then(/^I see "([^"]*)" as a current unit converter$/) do |current_unit|
  find_element(id: "action_bar").find_element(xpath: "//android.widget.TextView[@text='#{current_unit}']")
end