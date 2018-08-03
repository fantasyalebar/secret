Rails.application.routes.draw do
  root 'pages#home', as: :home
  get  'pages/secret_page', 'pages#secret_page'
  resources :users

  get '/signup', to: 'users#new'
  get '/login',  to: 'sessions#new'
  post '/login',  to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'
end

