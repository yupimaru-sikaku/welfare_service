Rails.application.routes.draw do

  get 'ghs/index'
  devise_for :users
  root to: 'services#index'

  resources :users
  resources :rooms, only: [:index, :new, :create, :destroy, :show]
  resources :messages

  resources :services, only: [:index]

  # GH（共同生活援助）
  resources :ghs, only: [:index, :search, :show] do
    collection do
      get 'search'
    end
  end

  # フォロー機能用
  put 'users/follow/:user_id',to: 'users#follow'
  put 'users/unfollow/:user_id',to: 'users#unfollow'
  
  get 'users/follow_list/:user_id',to: 'users#follow_list'
  get 'users/follower_list/:user_id',to:'users#follower_list'

end