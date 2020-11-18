# frozen_string_literal: true

module Recipe
  module_function

  def all
    contentful.entries(content_type: 'recipe')
  end

  def contentful
    @contentful ||= Contentful::Client.new(
      access_token: ENV['CONTENTFUL__ACCESS_TOKEN'],
      space:        ENV['CONTENTFUL__SPACE']
    )
  end

  def find(id)
    contentful.entry(id)
  end
end
