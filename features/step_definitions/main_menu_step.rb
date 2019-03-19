Given("I land on home screen") do
  puts('I landed on Home screen')
end
When("I press on menu icon") do
  puts('Menu icon pressed')
end
Then("I should see left side menu") do
  puts('I see left side menu')
end
But("I didn't see menu") do
  puts('I cannot see')
end
When("I press on My conversions button") do
  puts("My conversion button pressed")
end

Then("I land on My conversions screen") do
  puts("Landed on My conversions screen")
end
