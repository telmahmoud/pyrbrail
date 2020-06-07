Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :alphas
  resources :articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root "application#home"
  root "pages#home"
  get "about" , to: "pages#about"
end
