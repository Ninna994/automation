Before do
  #start appium
  $driver.start_driver
end
After do |scenario|
  if scenario.failed?
    #take screenshot in folder screenshots
    if !File.directory?("screenshots")
      FileUtils.mkdir_p("screenshots")
    end
    #unique screenshot name with time library
    time_stamp = Time.now.strftime("%d-%m-%Y_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")

  end
  #timeout before killing appium
  # sleep 1
  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("screenshots") if File.directory?("screenshots")
end