Rails.application.routes.draw do

  devise_for :users
  root to: 'services#index'

  resources :users
  resources :rooms, only: [:index, :new, :create, :destroy, :show]
  resources :messages

  # フォロー機能用
  put 'users/follow/:user_id',to: 'users#follow'
  put 'users/unfollow/:user_id',to: 'users#unfollow'
  
  get 'users/follow_list/:user_id',to: 'users#follow_list'
  get 'users/follower_list/:user_id',to:'users#follower_list'

end
