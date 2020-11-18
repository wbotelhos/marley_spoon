# frozen_string_literal: true

require 'bundler'
require 'contentful'
require 'dotenv/load'
require 'sinatra/base'

Bundler.require(:default, ENV['RACK_ENV'])

Dir['./app/**/*.rb'].sort.each { |file| require file }

class Application < Sinatra::Base
  use ::RecipesController
end
