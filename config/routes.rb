SilverFit::Application.routes.draw do
  devise_for :users

  root to: "pages#index"
  match 'yes' => 'pages#confirmation'
  
  get "pages/index"
  resources :users

end
