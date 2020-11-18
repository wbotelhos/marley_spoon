# frozen_string_literal: true

require 'rack/test'

module RackTestMethods
  include Rack::Test::Methods

  def app
    described_class
  end
end

RSpec.configure do |config|
  config.before do
    config.include(RackTestMethods)
  end
end
