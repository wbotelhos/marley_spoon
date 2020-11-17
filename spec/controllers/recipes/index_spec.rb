# frozen_string_literal: true

RSpec.describe RecipesController, '#index' do
  def app
    RecipesController
  end

  it 'response ok' do
    get '/recipes'

    expect(last_response.status).to be(200)
  end
end
