# frozen_string_literal: true

require 'support/vcr'

RSpec.describe RecipePresenter, '#tags_names' do
  context 'when recipe has tags names' do
    let!(:recipe) { VCR.use_cassette('recipe') { Recipe.find('437eO3ORCME46i02SeCW46') } }

    it 'returns the tags names' do
      expect(described_class.new(recipe).tags_names).to eq('gluten free, healthy')
    end
  end

  context 'when recipe has no tag' do
    let!(:recipe) { VCR.use_cassette('recipe__no_tags') { Recipe.find('2E8bc3VcJmA8OgmQsageas') } }

    it 'returns nil' do
      expect(described_class.new(recipe).tags_names).to be(nil)
    end
  end
end
