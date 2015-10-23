require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)

abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'spec_helper'
require 'rspec/rails'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'devise'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false

  config.infer_spec_type_from_file_location!

  config.include Devise::TestHelpers, type: :controller
  config.include Warden::Test::Helpers

  config.before :suite do
    Warden.test_mode!
  end

  config.before :suite do
    DatabaseCleaner.clean
  end

  config.after :each do
    Warden.test_reset!
  end

  config.after :suite do
    DatabaseCleaner.clean
  end


end
