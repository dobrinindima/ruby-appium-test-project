require 'appium_lib'
require_relative 'appium_config'
require 'rspec'

RSpec.describe 'Carista App' do
  before(:each) do
    @driver = Appium::Driver.new(carista_android, false).start_driver
  end

  after(:each) do
    @driver.quit
  end

  it 'open the login screen' do
    close_button = @driver.find_element :id, 'com.prizmos.carista:id/iv_auth_onboarding_close'
    close_button.click
    email_button = @driver.find_element :id, 'com.prizmos.carista:id/email_button'
    email_button.click
    email_field = @driver.find_element :xpath, '//android.widget.EditText[@resource-id="com.prizmos.carista:id/edit_text" and @text="Your email address"]'
    expect(email_field.text).to eq('Your email address')
  end
end
