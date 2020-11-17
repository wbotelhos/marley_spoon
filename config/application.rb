# frozen_string_literal: true

require 'bundler'
require 'contentful'
require 'dotenv/load'
require 'sinatra/base'

Bundler.require(:default, :development, :test)

Dir['./app/**/*.rb'].each { |file| require file }

class Application < Sinatra::Base
  use ::RecipesController
end
