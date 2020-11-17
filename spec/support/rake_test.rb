# frozen_string_literal: true

require 'rack/test'

RSpec.configure do |config|
  config.before do |example|
    config.include(Rack::Test::Methods)

    Capybara.app = described_class
  end
end
