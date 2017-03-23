Rails.application.routes.draw do
  resources :grades
  devise_for :users

  root "grades#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
