class RecipesController < ApplicationController
  def index
    if params[:tag]
      @recipes = Recipe.tagged_with(params[:tag])
    else
      @recipes = Recipe.all.order('created_at DESC')
    end
    # @favorited = Favorite.find_by(user_id: current_user).present?
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe
    else
      render 'new'
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe].permit(:name, :description, :instructions, :tag_list))
      redirect_to @recipe
    else
      render 'edit'
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_path
  end

  private
    def recipe_params
      params.require(:recipe).permit(:name, :description, :instructions, :tag_list, :user_id)
    end
end
