Rails.application.routes.draw do
  get 'admin' => 'admin#index'
  put 'admin/:id' => 'admin#update'
  patch 'admin/:id' => 'admin#update'

  resources :grades
  devise_for :users

  root "grades#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
