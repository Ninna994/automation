# Installation Process

1. Installation of Java SDK 8 
   * google _Java SDK 8_ and download file for your operating system
   * follow installation and close dialog window
   * download _Java SE Dev Kit 8u201_ for your operation system
1. Installation od Android Studio
   * google _Android studio and SDK_ and download version for your operating system
   * Install SDK when asked to
   * Navigate to _C:/Users/Username/AppData/Local/Android/Sdk_ and **copy** that folder
   * Paste it to root folder _C:/_
   * Rename folder to _android-sdk_
1. Configuring PATH
   * Go to My Computer, right-click and select _properties_
   * Go to Advanced Properties and **Environment Variables**
   * Under System Variables find **PATH** and click _Edit_
   * Add to existing path with ; between paths or add as new path(Win 10) next 3 paths:
      * C:\android-sdk\platform-tools
      * C:\android-sdk\tools
      * C:\android-sdk\tools\bin
1. Terminal commands
   * Open terminal and type **adb**
   * Next type **uiautomationviewer**
   * This should trigger new window with viewer
1. Installing Ruby
   * google _Ruby Installer_
   * navigate to downloads and choose **Ruby 2.3.3** installation for your operating system
   * Download **DevKit mingw 64-64-4.7.2-20130224-1432.sfx.exe**
   * Double click to open it and choose default path to extract it
   * go to Terminal now
   * go to _root_ folder
   * navigate to _Ruby23-x64_
   * type **ruby dk.rb init**
   * after that type **ruby dk.rb install**
   * Ruby is installing on your computer
   * To confirm installation type **ruby -v** and that should print version you are using
1. Installing Cucumber
   * Go to terminal
   * type **gem install cucumber**
   * This will install cucumber 
   * type **gem install appium_lib**
   * This will install appium_lib
1. Installing Appium
   * google _Appium.io_
   * Download version for your computer
   * follow instructions and install software
1. Installing RubyMine
   * google _jetbrains.com/ruby_
   * Download Ruby Mine
1. Set Android device for Testing
   * Connect Android Device to computer with usb
   * On your device go to settings and navigate to _about phone_
   * Click **10** times on _build number_
   * This should enable Developer mode
   * Navigate to Developer mode and check **Stay Awake** and **Enable USB Debugging**
1. Final checks
   * after you connected your device and configured it go to Terminal
   * type **adb devices**
   * this will list all devices that are connected to your computer
   * to install .apk file from your computer navigate to folder which contains it and type **adb install app-name.apk**
   * Wait for installation to complete and your app is installed on your device 
 