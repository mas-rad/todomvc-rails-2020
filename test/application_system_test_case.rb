require 'test_helper'

if ENV['GITPOD_WORKSPACE_ID']
  Selenium::WebDriver::Chrome::Service.driver_path = '/usr/local/bin/chromedriver'
end

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400] do |option|
    option.add_argument('no-sandbox')
  end
end

# Remove "Capybara starting Puma..." test logs
Capybara.server = :puma, { Silent: true }
