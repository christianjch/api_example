RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.order = "random"

  config.include FactoryGirl::Syntax::Methods

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    switch_to_main_domain

    DatabaseCleaner.start
    ElasticsearchClient.create_indices
    PhraseMatching.test_mode!
  end

  config.after(:each) do
    DatabaseCleaner.clean
    ElasticsearchClient.delete_indices
  end
end
