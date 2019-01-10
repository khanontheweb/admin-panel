Rails.application.routes.draw do
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
  get 'students', to: 'users#students_show', as: 'students'
  get 'instructors', to: 'users#instructors_show', as: 'instructors'
  get 'student_profile/:id', to: 'users#student_profile', as: 'student_profile'
  get 'instructor_profile/:id', to: 'users#instructor_profile', as: 'instructor_profile'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
