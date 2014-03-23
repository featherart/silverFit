SilverFit::Application.routes.draw do
  devise_for :users

  root to: "pages#index"
  
  get "pages/index"
  resources :users
  
  post "users/basic_info"

end
