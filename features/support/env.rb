require 'appium_lib'
#capabilities
def caps
  {
      caps:{
          deviceName: "Nina",
          platformName: "Android",
          app: (File.join(File.dirname(__FILE__ ), "PreciseUnitConversion.apk")),
          appPackage: "com.ba.universalconverter",
          appActivity: "MainConverterActivity",
          newCommandTimeout: "3600"
      }
  }
end
Appium::Driver.new(caps, true)
#appium lib access
Appium.promote_appium_methods Object

def find_in_list(value)
  3.times{Appium::TouchAction.new.swipe(start_x:0.5, start_y:0.2, end_x:0.5, end_y:0.8, duration:600 ).perform}
  until exists{text(value)} do
    Appium::TouchAction.new.swipe(start_x:0.5, start_y:0.8, end_x:0.5, end_y:0.2, duration:600 ).perform
  end
  text(value).click
end