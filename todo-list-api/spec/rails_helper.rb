require 'database_cleaner'

# configure shoulda matchers to use rspec as the test framework and full matcher libraries for rails
Shoulda::Matchers.configure do |config| #What does :: do and | | and 'do'
  config.integrate do |with| #GUESS: |whatever is in here| is the variable we use to call things inside.
    with.test_framework :rspec #figure out what : does.
    with.library :rails
  end
end

RSpec.configuration do |config|
  config.include FactoryBot::Syntax::Methods

  # start by truncating all the tables but then use the faster transaction strategy the rest of the time.
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    DatabaseCleaner.strategy = :transaction
  end

  # start the transaction strategy as examples are run
  config.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end