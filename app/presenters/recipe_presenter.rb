# frozen_string_literal: true

class RecipePresenter < SimpleDelegator
  def photo_url
    photo.url
  end

  def tags_names
    return unless respond_to?(:tags)

    tags.map(&:name).join(', ')
  end

  def url
    "/recipes/#{id}"
  end

  def self.wrap(articles)
    articles.map { |article| new(article) }
  end
end
