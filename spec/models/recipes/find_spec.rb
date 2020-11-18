# frozen_string_literal: true

require 'support/vcr'

RSpec.describe Recipe, '#find' do
  it 'returns a recipe entry' do
    VCR.use_cassette('recipe') do
      recipe = Recipe.find('437eO3ORCME46i02SeCW46')

      expect(recipe.class).to eq(Contentful::Entry)
      expect(recipe.id).to    eq('437eO3ORCME46i02SeCW46')
      expect(recipe.title).to eq("Crispy Chicken and Rice\twith Peas & Arugula Salad")
    end
  end
end
