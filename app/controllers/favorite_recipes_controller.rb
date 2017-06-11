class FavoriteRecipesController < ApplicationController
  before_action :set_recipe
  
  def create
    if Favorite.create(favorited: @recipe, user: current_user)
      redirect_to @recipe, notice: 'recipe has been favorited'
    else
      redirect_to @recipe, alert: 'Something went wrong...'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @recipe.id, user_id: current_user.id).first.destroy
    redirect_to @recipe, notice: 'recipe is no longer in favorites'
  end
  
  private
  
  def set_recipe
    @recipe = Recipe.find(params[:recipe_id] || params[:id])
  end
end