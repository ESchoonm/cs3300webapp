Rails.application.routes.draw do
  resources :bookrakes
  devise_for :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #defines the root as our home page for the books
  root "books#index"
end
