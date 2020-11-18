# frozen_string_literal: true

require 'support/vcr'

RSpec.describe RecipePresenter, '#by' do
  context 'when recipe has chef' do
    let!(:recipe) { VCR.use_cassette('recipe') { Recipe.find('437eO3ORCME46i02SeCW46') } }

    it 'returns the chef name' do
      expect(described_class.new(recipe).by).to eq('by Jony Chives')
    end
  end

  context 'when recipe has no chef' do
    let!(:recipe) { VCR.use_cassette('recipe__no_chef') { Recipe.find('4dT8tcb6ukGSIg2YyuGEOm') } }

    it 'returns nil' do
      expect(described_class.new(recipe).by).to be(nil)
    end
  end
end
