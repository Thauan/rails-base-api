# frozen_string_literal: true

require 'capybara/rspec'

Capybara.register_driver :chrome_headless do |app|
  Capybara::Selenium::Driver.new app,
    browser: :chrome,
    clear_session_storage: true,
    clear_local_storage: true,
    capabilities: [Selenium::WebDriver::Chrome::Options.new(
      args: %w[headless disable-gpu no-sandbox window-size=1024,768],
      prefs: {
        download: {
          prompt_for_download: false,
          default_directory: DownloadHelpers::PATH.to_s
        },
        browser: {
          set_download_behavior: {
            behavior: 'allow'
          }
        }
      }
    )]
end

Capybara.javascript_driver = :chrome_headless
