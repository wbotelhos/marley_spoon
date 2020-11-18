# frozen_string_literal: true

require 'support/capybara'
require 'support/vcr'

RSpec.describe RecipesController, '#show', type: :feature do
  it 'show recipe details' do
    VCR.use_cassette('recipe') do
      visit '/recipes/437eO3ORCME46i02SeCW46'
    end

    # shows breadcrumbs

    within '.breadcrumbs' do
      expect(page).to have_link('Recipes', href: '/recipes')

      expect(find('.breadcrumbs__item--current').text).to eq('Crispy Chicken and Rice with Peas & Arugula Salad')
    end

    # shows title

    expect(page).to have_text('Crispy Chicken and Rice with Peas & Arugula Salad')

    # shows images

    image = find('.recipe__image')

    expect(image[:src]).to match(/SKU1479/)
    expect(image[:alt]).to eq("Crispy Chicken and Rice\twith Peas & Arugula Salad.")

    # shows chef name

    expect(page).to have_text('by Jony Chives')

    # shows description

    description = %(
      Crispy chicken skin, tender meat, and rich, tomatoey sauce form a winning trifecta of delicious in this
      one-pot braise. We spoon it over rice and peas to soak up every last drop of goodness, and serve a tangy
      arugula salad alongside for a vibrant boost of flavor and color. Dinner is served! Cook, relax, and enjoy!
    ).strip.gsub(/\s+/, ' ')

    expect(page).to have_text(description)
  end
end
