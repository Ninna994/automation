Before do
  #start appium
  $driver.start_driver
end
After do
  #timeout before killing appium
  sleep 3
  $driver.driver_quit
end