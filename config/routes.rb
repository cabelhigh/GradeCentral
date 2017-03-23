Rails.application.routes.draw do
  resources :comments
  get 'admin' => 'admin#index'
  put "admin/:id" => 'admin#update'
  patch "admin/:id" => 'admin#update'

  get 'admin/update'

  resources :grades
  devise_for :users

  root "grades#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
