require File.expand_path("../../config/environment", __FILE__)

require 'rspec/rails'
require 'factory_girl_rails'

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.order = "random"

  config.include FactoryGirl::Syntax::Methods
  config.fixture_path = "#{::Rails.root}/spec/factories"
  config.infer_spec_type_from_file_location!

  #config.mock_with :rspec do |mocks|
    #mocks.verify_partial_doubles = true
  #end

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
