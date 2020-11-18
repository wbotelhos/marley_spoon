# frozen_string_literal: true

RSpec.describe RecipesController, '#index' do

  it 'response ok' do
    get '/recipes'

    expect(last_response.status).to be(200)
  end
end
