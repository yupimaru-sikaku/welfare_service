Rails.application.routes.draw do

  # ユーザー専用
  devise_for :users
  root to: 'services#index'

  resources :users do
    collection do
      get 'admin_request'
    end
  end

  resources :rooms, only: [:index, :new, :create, :destroy, :show]
  resources :messages

  resources :services do
    collection do
      get 'admin_index'
    end
  end

  # GH（共同生活援助）
  resources :ghs do
    resource :favorites, only: [:create, :destroy]
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