# frozen_string_literal: true

class RecipesController < ApplicationController
  get '/recipes' do
    @recipes = contentful.entries(content_type: 'recipe')

    erb :'recipes/index'
  end
end
