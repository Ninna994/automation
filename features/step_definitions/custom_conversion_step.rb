Then(/^I press Create your first conversion button$/) do
  find_element(id: "btn_new_custom_conversion").click
end

And(/^I type "([^"]*)"$/) do |name|
  find_element(id: "edit_custom_conversion_category_name").send_keys(name)
end

When(/^I press on new unit button$/) do
  find_element(id: "btn_new_custom_unit").click
end

Then(/^I type "([^"]*)" as unit Name$/) do |unit_name|
  find_element(id: "edit_custom_conversion_unit_dtls_name").send_keys(unit_name)
end

Then(/^I type "([^"]*)" as unit Symbol$/) do |unit_symbol|
  find_element(id: "edit_custom_conversion_unit_dtls_symbol").send_keys(unit_symbol)
end

Then(/^I type "([^"]*)" as unit Value$/) do |unit_value|
  find_element(id: "edit_custom_conversion_unit_dtls_value").send_keys(unit_value)
end

Then(/^I press submit Check mark on Custom conversion right top screen$/) do
  find_element(id: "action_confirm_custom_unit").click
end
When(/^I press ok button on custom conversions screen$/) do
  find_element(id: "btn_custom_conversion_details_ok").click
end
Then(/^I verify "([^"]*)" added to Custom conversions list$/) do |conversion_name|
  text(conversion_name)
end

