# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
  end

  protected

  def contentful
    @contentful ||= Contentful::Client.new(
      access_token: ENV['CONTENTFUL__ACCESS_TOKEN'],
      space:        ENV['CONTENTFUL__SPACE']
    )
  end
end
