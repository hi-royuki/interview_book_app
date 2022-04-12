Rails.application.routes.draw do
  get 'sessions_controller/new'
  get 'sessions_controller/create'
  get 'sessions_controller/destroy'
  # topページ
  root 'tops#index'

end
