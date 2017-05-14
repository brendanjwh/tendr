class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all.order('created_at DESC')
  end

  def new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save

    redirect_to @recipe
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :ingredients, :description, :instructions)
    end
end
