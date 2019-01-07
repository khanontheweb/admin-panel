Rails.application.routes.draw do
  resources :instructors
  resources :students
  resources :cohorts
  resources :courses
  resources :test_scaffolds
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  root 'users#new'
  get 'add', to: 'users#add', as:'add_user'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
