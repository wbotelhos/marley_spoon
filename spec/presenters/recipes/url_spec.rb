# frozen_string_literal: true

require 'support/vcr'

RSpec.describe RecipePresenter, '#url' do
  let!(:recipe) { VCR.use_cassette('recipe') { Recipe.find('437eO3ORCME46i02SeCW46') } }

  it 'returns the recipe url' do
    expect(described_class.new(recipe).url).to eq('/recipes/437eO3ORCME46i02SeCW46')
  end
end
