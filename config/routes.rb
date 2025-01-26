Rails.application.routes.draw do
  root to: 'tweets#index'
  resources :tweets #tweetsパスに対するルーティングを設定
end


