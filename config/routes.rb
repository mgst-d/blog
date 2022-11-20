Rails.application.routes.draw do
  
  devise_for :users
  root to: "articles#index"

  get 'about/index'
  # get 'home/index'
  resources :articles do
    resources :comments, only: [:create]
  end

  #get 'contacts/new'
  #post 'contacts/create'
  resource :contacts, only: [:new, :create], path_names: {:new => ''}

  get 'terms' => 'pages#terms'
  get 'about' => 'pages#about'
  get 'map' => 'pages#map'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
