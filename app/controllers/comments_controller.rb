class CommentsController < ApplicationController

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.create(params[:comment].permit(:username, :body))
    @comment.user_id = current_user.id
    @comment.recipe_id = @recipe.id
    if @comment.save
      redirect_to recipe_path(@recipe)
    else
      flash.now[:danger] = "error"
    end
  end

  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @comment = @recipe.comments.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@recipe)
  end
end
