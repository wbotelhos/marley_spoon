# frozen_string_literal: true

class RecipesController < ApplicationController
  get '/recipes' do
    @recipes = Recipe.all

    erb :'recipes/index'
  end
end
