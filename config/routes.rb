Rails.application.routes.draw do
  get 'home/index'
  resources :articles
  #get 'contacts/new'
  #post 'contacts/create'
  resource :contacts, only: [:new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
