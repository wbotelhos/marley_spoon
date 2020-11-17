# frozen_string_literal: true

require 'capybara'
require 'capybara/dsl'

RSpec.configure do |config|
  config.before(type: :feature) do |example|
    config.include Capybara::DSL
  end
end
