# frozen_string_literal: true

require 'support/vcr'

RSpec.describe Recipe, '#all' do
  it 'returns all recipes entries' do
    VCR.use_cassette('recipes') do
      recipes = Recipe.all

      expect(recipes.size).to be(4)

      expect(recipes[0].class).to eq(Contentful::Entry)
      expect(recipes[0].id).to    eq('4dT8tcb6ukGSIg2YyuGEOm')
      expect(recipes[0].title).to eq('White Cheddar Grilled Cheese with Cherry Preserves & Basil')

      expect(recipes[1].class).to eq(Contentful::Entry)
      expect(recipes[1].id).to    eq('5jy9hcMeEgQ4maKGqIOYW6')
      expect(recipes[1].title).to eq('Tofu Saag Paneer with Buttery Toasted Pita')

      expect(recipes[2].class).to eq(Contentful::Entry)
      expect(recipes[2].id).to    eq('2E8bc3VcJmA8OgmQsageas')
      expect(recipes[2].title).to eq('Grilled Steak & Vegetables with Cilantro-Jalapeño Dressing')

      expect(recipes[3].class).to eq(Contentful::Entry)
      expect(recipes[3].id).to    eq('437eO3ORCME46i02SeCW46')
      expect(recipes[3].title).to eq("Crispy Chicken and Rice\twith Peas & Arugula Salad")
    end
  end
end
