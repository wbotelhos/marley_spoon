# frozen_string_literal: true

require 'support/vcr'

RSpec.describe RecipePresenter, '.wrap' do
  let!(:recipes) { VCR.use_cassette('recipes') { Recipe.all } }

  it 'converts each recipe into presenter' do
    expect(described_class.wrap(recipes).map(&:class)).to eq([
      described_class,
      described_class,
      described_class,
      described_class
    ])
  end
end
