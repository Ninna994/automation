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
  button_state = find_element(id: "btn_show_all").enabled?
  if state == "enabled"
    fail("Expected to be enabled") if button_state != true
  elsif state == "disabled"
    fail("Expected to be disabled") if button_state != false
  end
end

When("I press on Clear button") do
  puts("Clear button is pressed")
end


When(/^I type "([^"]*)" on application keyboard$/) do |target|
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
  actual_text = find_element(id: "favorites_item_hint").text
  fail("Expected #{unit_type}, but got #{actual_text}") if unit_type != actual_text
end

Then(/^I press Search icon$/) do
  # find_element(id: "action_search").click
  element = find_element(id: "action_search")
  location = element.location
  x = location[:x]
  y = location[:y]
  Appium::TouchAction.new.tap(x:x, y:y).perform
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

Then(/^I press on Left unit picker and select "([^"]*)"$/) do |value|
  find_elements(id: "select_unit_spinner")[0].click
  find_in_list(value)
end

Then(/^I select "([^"]*)" from menu$/) do |value|
  text(value).click
end

Then(/^I press on Right unit picker and select "([^"]*)"$/) do |value|
  find_elements(id: "select_unit_spinner")[1].click
  find_in_list(value)
end

When(/^I press on switch units button$/) do
  find_element(id: "img_switch").click
end

And(/^I should see text "([^"]*)"$/) do |text|
  actual_text = find_element(id: "text_info_history").text
  if actual_text != text
    fail("Expected text is #{text} and actual text is #{actual_text}")
  end
end


Then(/^I verify that (\d+)(?:st|nd|rd|th)? result in history list is "([^"]*)"$/) do |index, text|
  parent_element = find_element(id: "history_conversion_list")
  array_of_elements = parent_element.find_elements(id: "history_single_line")
  actual_text = array_of_elements[index.to_i - 1].find_element(id: "history_item_hint").text
  if actual_text != text
    fail("Expected text is #{text} and actual text is #{actual_text}")
  end

end

When(/^I press delete from history at (\d+)(?:st|nd|rd|th)? row$/) do |index|
  parent_element = find_element(id: "history_conversion_list")
  array_of_elements = parent_element.find_elements(id: "history_single_line")
  array_of_elements[index.to_i - 1].find_element(id: "deleteIcon").click
end