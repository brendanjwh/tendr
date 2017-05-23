Rails.application.routes.draw do
  devise_for :users
  resources :recipes do 
    resources :comments
  end
  resources :ingredients

  get '/about', to: 'pages#about'

  root "recipes#index"
end
