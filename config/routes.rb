Rails.application.routes.draw do

  devise_for :users
  root to: 'services#index'

  resources :signups do
    collection do
      get 'step1'
      get 'step2'
      get 'step3' #ここで入力終了
      get 'done' #登録完了後のページ
    end
  end

  resources :rooms, only: [:index, :new, :create, :destroy]

end
