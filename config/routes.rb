Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets #tweetsパスに対するルーティングを設定
end


