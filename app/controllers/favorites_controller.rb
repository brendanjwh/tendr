class FavoritesController < ApplicationController
  
  def create
    @

    if Favorite.create(user_id: current_user, recipe_id: )
    @favorite = Favorite.new
  end

end
