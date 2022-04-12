Rails.application.routes.draw do

  # topページ
  root 'tops#index'
  # ログインページ
  resources :sessions, only: [:new, :create, :destroy]
  # 新規登録ページ
  resources :users
end
