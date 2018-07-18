Rails.application.routes.draw do
  resources :courses
  resources :contacts
  resources :conclusions
  # resources :coordinators
  # resources :students
  
  get 'home/index'
  get 'home/login'
  get 'home/signup'
  root 'home#index'
 

  devise_for :coordinators, path: 'coordinators', controllers: {
    sessions: "coordinators/sessions",
    registrations: "coordinators/registrations"
  }

  devise_for :students, path: 'students', controllers: {
    sessions: "students/sessions",
    registrations: "students/registrations"
  }

  devise_for :admins, path: 'admins', controllers: {
    sessions: "admins/sessions",
    registrations: "admins/registrations"
  }
  
end
