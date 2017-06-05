Rails.application.routes.draw do
  devise_for :users
  resources :recipes do 
    resources :comments
  end
  resources :ingredients
  resources :users
  resources :favorites, only: [:create, :destroy, :show]

  get '/about', to: 'pages#about'
  get 'tags/:tag', to: 'recipes#index', as: :tag

  root "recipes#index"
end
