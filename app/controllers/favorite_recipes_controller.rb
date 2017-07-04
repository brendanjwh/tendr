class FavoriteRecipesController < ApplicationController
  def create
    @recipe = Recipe.find(params[:recipe_id])
    @user = current_user
    @favoriteRecipe = @user.favorites.create(params[:favoriteRecipe])
    if @favoriteRecipe.save
      flash[:notice] = "recipe has been favorited"
      redirect_to root_path
    else
      flash[:notice] = "Oops...something went wrong"
    end
  end

  def destroy

  end

  # private
  #   def favoriteRecipe_params
  #     params.require(:favoriteRecipe).permit(:user_id, :recipe_id)
  #   end
end
