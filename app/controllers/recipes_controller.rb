# frozen_string_literal: true

class RecipesController < ApplicationController
  get '/recipes' do
    @recipes = RecipePresenter.wrap(Recipe.all)

    erb :'recipes/index'
  end

  get '/recipes/:id' do
    @recipe = RecipePresenter.new(Recipe.find(params[:id]))

    erb :'recipes/show'
  end
end
