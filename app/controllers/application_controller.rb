# frozen_string_literal: true

class ApplicationController < Sinatra::Base
  configure do
    set :views, 'app/views'
  end
end
