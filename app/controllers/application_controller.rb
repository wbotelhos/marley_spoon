# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
  end

  protected

  def contentful
    @contentful ||= Contentful::Client.new(access_token: ENV['ACCESS_TOKEN'], space: ENV['SPACE'])
  end
end
