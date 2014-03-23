SilverFit::Application.routes.draw do
  devise_for :users

  root to: "pages#index"
  match 'yes' => 'pages#confirmation'
  match 'pages/form' => 'pages#form'
  
  get "pages/index"
  resources :users
  resources :pages
  
  post "users/basic_info"

end
