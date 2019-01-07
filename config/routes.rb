Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  get 'rooms/index'
  get 'rooms/show'
  devise_for :users
  root 'rooms#index'
  resources :messages
  resources :rooms

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
