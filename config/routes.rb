Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'about', to: 'pages#about'
  resources :articles

  # Custum route for signup
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
