Rails.application.routes.draw do
  get 'session_helper/log_in'
  get 'session_helper/current_user'
  get 'session_helper/logged_in'
  get 'session_helper/log_out'	

  root 'pages#home', as: :home
  get  'pages/secret_page', 'pages#secret_page'
  resources :users
  resources :sessions
end

