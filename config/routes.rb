Rails.application.routes.draw do
  resources :posts, only: [:new, :create, :index, :destroy]
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "posts#index"
end
