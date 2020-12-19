Rails.application.routes.draw do

  devise_for :users
  root to: 'services#index'

  resources :rooms, only: [:index, :new, :create, :destroy]

end
