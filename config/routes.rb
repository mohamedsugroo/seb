Rails.application.routes.draw do

  # Contractor Dashboard
  get 'contractorprofile/index'
  get 'contractorprofile/show'

  # Company Dashboard
  get '/dashboard', to:'companyprofile#index'
  get 'companyprofile/show'

  # Companies List
  get '/companies', to: 'companydashboard#index'
  get '/company/jobs', to:'companydashboard#jobs'
  get '/company/hires', to:'companydashboard#hired'

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
