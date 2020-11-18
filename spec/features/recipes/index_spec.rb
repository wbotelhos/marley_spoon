# frozen_string_literal: true

require 'support/capybara'
require 'support/vcr'

RSpec.describe RecipesController, '#index', type: :feature do
  it 'list all recipes' do
    VCR.use_cassette('recipes') do
      visit '/recipes'
    end

    # shows title

    expect(page).to have_text('Recipes')

    # shows recipes images

    images = all('.recipe__image')

    expect(images.size).to be(4)

    expect(images[0][:src]).to match(/SKU1240/)
    expect(images[0][:alt]).to eq('White Cheddar Grilled Cheese with Cherry Preserves & Basil.')

    expect(images[1][:src]).to match(/SKU1498/)
    expect(images[1][:alt]).to eq('Tofu Saag Paneer with Buttery Toasted Pita.')

    expect(images[2][:src]).to match(/SKU1503/)
    expect(images[2][:alt]).to eq('Grilled Steak & Vegetables with Cilantro-Jalapeño Dressing.')

    expect(images[3][:src]).to match(/SKU1479/)
    expect(images[3][:alt]).to eq("Crispy Chicken and Rice\twith Peas & Arugula Salad.")

    # shows recipes titles

    expect(page).to have_link(
      'White Cheddar Grilled Cheese with Cherry Preserves & Basil',
      href: '/recipes/4dT8tcb6ukGSIg2YyuGEOm'
    )

    expect(page).to have_link(
      'Tofu Saag Paneer with Buttery Toasted Pita',
      href: '/recipes/5jy9hcMeEgQ4maKGqIOYW6'
    )

    expect(page).to have_link(
      'Grilled Steak & Vegetables with Cilantro-Jalapeño Dressing',
      href: '/recipes/2E8bc3VcJmA8OgmQsageas'
    )

    expect(page).to have_link(
      'Crispy Chicken and Rice with Peas & Arugula Salad',
      href: '/recipes/437eO3ORCME46i02SeCW46'
    )
  end
end
