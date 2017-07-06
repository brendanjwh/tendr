require 'rails_helper'

describe RecipesController do
  describe 'GET #index' do 
    it "renders the :index view" do 
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do 
    it "renders the #show view" do 
      user = create(:user)
      recipe = create(:recipe)
      get :show, params: {id: recipe.id}
      expect(assigns(:recipe)).to render_template :show
    end
  end
end