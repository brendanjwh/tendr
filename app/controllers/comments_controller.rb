class CommentsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(params[:comment].permit(:username, :body))

    redirect_to recipe_path(@recipe)
  end
end
