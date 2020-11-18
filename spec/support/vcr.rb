# frozen_string_literal: true

require 'vcr'

VCR.configure do |config|
  config.cassette_library_dir     = 'spec/fixtures/vcr'
  config.default_cassette_options = { record: :new_episodes }

  config.filter_sensitive_data('<CONTENTFUL__ACCESS_TOKEN>') { ENV['CONTENTFUL__ACCESS_TOKEN'] }
  config.filter_sensitive_data('<CONTENTFUL__SPACE>') { ENV['CONTENTFUL__SPACE'] }
  config.hook_into(:webmock)
end
