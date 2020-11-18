# frozen_string_literal: true

ENV['SINATRA_ENV'] ||= 'test'

require 'pry-byebug'

require_relative 'support/common'
require_relative 'support/rake_test'
require_relative 'support/webmock'
