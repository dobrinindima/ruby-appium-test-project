require 'appium_lib'
require_relative 'appium_config'
require 'rspec'

RSpec.describe 'Wikipedia App' do
  before(:each) do
    @driver = Appium::Driver.new(wikipedia_android, false).start_driver
  end

  after(:each) do
    @driver.quit
  end

  it 'open the app' do
    wait = Selenium::WebDriver::Wait.new(timeout: 30)
    wait.until { @driver.find_element(id: 'android:id/alertTitle').displayed? }
    wait.until { @driver.find_element(id: 'android:id/message').displayed? }

    ok_button = @driver.find_element(id: 'android:id/button1')
    ok_button.click

    wait.until { !@driver.find_elements(id: 'android:id/alertTitle').any? }
  end
end
