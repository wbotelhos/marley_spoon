# frozen_string_literal: true

require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir     = 'spec/fixtures/vcr'
  config.default_cassette_options = { record: :new_episodes }

  config.filter_sensitive_data('<CONTENTFUL_ACCESS_TOKEN>') { ENV['CONTENTFUL_ACCESS_TOKEN'] }
  config.filter_sensitive_data('<CONTENTFUL_SPACE>') { ENV['CONTENTFUL_SPACE'] }
  config.hook_into(:webmock)
end
