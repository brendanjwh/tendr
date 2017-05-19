Rails.application.routes.draw do
  devise_for :users
  resources :recipes do 
    resources :comments
  end

  get '/about', to: 'pages#about'

  root "recipes#index"
end
