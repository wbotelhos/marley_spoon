# frozen_string_literal: true

RSpec.describe RecipesController, '#show' do
  it 'response ok' do
    VCR.use_cassette('recipe') do
      get '/recipes/437eO3ORCME46i02SeCW46'
    end

    expect(last_response.status).to be(200)
  end
end
