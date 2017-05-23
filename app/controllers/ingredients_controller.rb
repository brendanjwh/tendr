class IngredientsController < ApplicationController
  def ingredient_params
    params.require(:ingredient).permit(:title, :tag_list)
  end
  
  def index
  end 
end
