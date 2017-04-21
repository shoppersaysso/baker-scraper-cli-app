require "bundler/setup"
<<<<<<< HEAD
require "baker_scraper"
=======
require "baker/scraper"
>>>>>>> 289c7c40c3ace8428d9fb59ea98a5be5c744876e

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
