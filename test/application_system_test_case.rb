require 'test_helper'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :selenium, using: :headless_chrome, screen_size: [1400, 1400]
end

# Remove "Capybara starting Puma..." test logs
Capybara.server = :puma, { Silent: true }
