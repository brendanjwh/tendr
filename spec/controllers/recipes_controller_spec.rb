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
      recipe = create(:recipe) 
      get :show, id: Factory(:recipe)
      assigns(:recipe).should render_template :show
    end
  end
end