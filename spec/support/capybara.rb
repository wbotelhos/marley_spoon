# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'

RSpec.configure do |config|
  config.before(type: :feature) do
    config.include(Capybara::DSL)

    Capybara.app = described_class
  end
end
