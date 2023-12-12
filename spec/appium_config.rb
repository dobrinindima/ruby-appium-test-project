def wikipedia_android
    {
      caps: {
        platformName: 'Android',
        deviceName: 'emulator-5554',
        app: '/Users/dobrinindima/Documents/GitHub/ruby-appium-test-project/apps/Wikipedia.apk',
        automationName: 'UiAutomator2'
      },
      appium_lib: {
        wait_timeout: 30,
        server_url: 'http://127.0.0.1:4723'
      }
    }
  end

def carista_android
    {
      caps: {
        platformName: 'Android',
        deviceName: 'emulator-5554',
        app: '/Users/dobrinindima/Documents/GitHub/ruby-appium-test-project/apps/Carista.apk',
        automationName: 'UiAutomator2'
      },
      appium_lib: {
        wait_timeout: 30,
        server_url: 'http://127.0.0.1:4723'
      }
    }
  end
