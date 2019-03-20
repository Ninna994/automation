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
