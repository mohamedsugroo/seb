Rails.application.routes.draw do

  get 'companydashboard/index'
  get 'companydashboard/jobs'
  get 'companydashboard/hired'
  resources :contractor_aprovals
  resources :company_aprovals
  devise_for :admins

  # register users
  get '/register', to: "home#register"
  
  resources :profilecompanies, only: [:show, :edit]

  root 'home#index'


  # user auth

  devise_for :companies, controllers: { 
  	registrations: 'companies/registrations' 
  }

  devise_for :contractors, controllers: { 
  	registrations: 'contractors/registrations' 
  }

end
