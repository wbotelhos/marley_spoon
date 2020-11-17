# frozen_string_literal: true

require 'bundler'
require 'contentful'
require 'dotenv/load'
require 'sinatra/base'

Bundler.require(:default, :development, :test)

class Application < Sinatra::Base
  get '/recipes' do
    @recipes = contentful.entries(content_type: 'recipe')
  end

  def contentful
    @contentful ||= Contentful::Client.new(access_token: ENV['ACCESS_TOKEN'], space: ENV['SPACE'])
  end
end
