# frozen_string_literal: true

require 'support/vcr'

RSpec.describe RecipesController, '#index' do
  it 'response ok' do
    VCR.use_cassette('recipes') do
      get '/recipes'
    end

    expect(last_response.status).to be(200)
  end
end
