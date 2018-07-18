Rails.application.routes.draw do
  resources :contacts
  resources :conclusions
  resources :coordinators
  get 'home/index'

  root 'home#index'

  resources :students
  resources :courses
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
