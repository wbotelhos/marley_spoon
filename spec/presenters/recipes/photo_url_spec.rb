# frozen_string_literal: true

require 'support/vcr'

RSpec.describe RecipePresenter, '#photo_url' do
  let!(:recipe) { VCR.use_cassette('recipe') { Recipe.find('437eO3ORCME46i02SeCW46') } }

  it 'returns the photo url' do
    expect(described_class.new(recipe).photo_url).to match('SKU1479')
  end
end
