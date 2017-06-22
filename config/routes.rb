Rails.application.routes.draw do
  devise_for :users

  resources :recipes do 
    resources :comments
    put :favorite, on: :member
  end

  resources :ingredients
  resources :users do 
    resources :favorite_recipes, only: [:create, :destroy, :show]
    #resources :favorites, only: [:create, :destroy, :show]
  end

  get '/about', to: 'pages#about'
  get 'tags/:tag', to: 'recipes#index', as: :tag

  root "recipes#index"
end
